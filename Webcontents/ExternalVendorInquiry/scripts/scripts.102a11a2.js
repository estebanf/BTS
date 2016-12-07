"use strict";angular.module("vendorInquiryCustomFormApp",["ngRoute","ngSanitize","datatables","ngLoadingOverlay"]).config(["$routeProvider",function(a){a.when("/",{templateUrl:"views/main.html",controller:"MainCtrl",controllerAs:"main"}).otherwise({redirectTo:"/"})}]),angular.module("vendorInquiryCustomFormApp").controller("MainCtrl",["$scope","everteam","$loadingOverlay","$window","DTOptionsBuilder",function(a,b,c,d,e){c.show("Loading task ..."),a.dtOptions=e.newOptions().withOption("bFilter",!1).withDOM("tr"),a.data={},a.newVendor={},a.vendors=[],a.editing=!1,a.editIndex=0,b.getTask().then(function(b){a.object=b["tms:getTaskResponse"]["tms:task"]["tms:input"],a.object.ExternalVendorInquiry.Vendors&&(angular.isArray(a.object.ExternalVendorInquiry.Vendors)?a.vendors=a.object.ExternalVendorInquiry.Vendors.map(function(a){return{resource:a.Resource.$,vendor:a.Vendor.$,cost:a.Cost.$}}):a.vendors=[{resource:a.object.ExternalVendorInquiry.Vendors.Resource.$,vendor:a.object.ExternalVendorInquiry.Vendors.Vendor.$,cost:a.object.ExternalVendorInquiry.Vendors.Cost.$}],delete a.object.ExternalVendorInquiry.Vendors),a.RequestId=a.object.ExternalVendorInquiry.Request.RequestId.$,a.CustomerId=a.object.ExternalVendorInquiry.Request.Information.CustomerId.$,a.EventDateTime=a.object.ExternalVendorInquiry.Request.Information.EventDateTime.$,a.EventDuration=a.object.ExternalVendorInquiry.Request.Information.EventDuration.$,a.EventType=a.object.ExternalVendorInquiry.Request.Information.EventType.$,a.Location=a.object.ExternalVendorInquiry.Request.Information.Location.$,a.RequestType=a.object.ExternalVendorInquiry.Request.Information.RequestType.$,a.Urgency=a.object.ExternalVendorInquiry.Request.Urgency.$,c.hide()}),a.addVendor=function(){!angular.equals(a.newVendor,{})&&a.newVendor.resource&&a.newVendor.vendor&&a.newVendor.cost&&isFinite(a.newVendor.cost)&&(a.editing?(a.vendors[a.editIndex]=a.newVendor,a.editing=!1,a.editIndex=0):a.vendors.push(a.newVendor),a.newVendor={})},a.editVendor=function(b){a.newVendor=angular.copy(a.vendors[b]),a.editing=!0,a.editIndex=b},a.removeVendor=function(b){a.vendors.splice(b,1)},a.cancel=function(){a.editing=!1,a.editIndex=0,a.newVendor={}},a.complete=function(){c.show("Completing task ...");var e=a.vendors.map(function(a){return{Cost:{$:a.cost+"","@xmlns":{$:"http://www.example.org/BTS"}},Resource:{$:a.resource,"@xmlns":{$:"http://www.example.org/BTS"}},Vendor:{$:a.vendor,"@xmlns":{$:"http://www.example.org/BTS"}}}});a.object.ExternalVendorInquiry["BTS1:Vendors"]=e,console.log(a.object),b.completeTask(a.object).then(function(a){console.log(a),c.hide(),d.location.assign("/everteam/workflow/script/empty.jsp")})}}]),angular.module("vendorInquiryCustomFormApp").factory("everteam",["$http","$q","$window",function(a,b,c){var d="/everteam/ode/processes/TaskManagementServices.TaskManagementServicesSOAP/",e="/everteam/ode/processes/completeTask",f=c.location.search.substring(1),g=f.split("&"),h={};angular.forEach(g,function(a){var b=a.split("=")[0],c=a.replace(b+"=","");h[b]=decodeURIComponent(c)});var i=function(a){return{method:"POST",headers:{"Content-Type":"application/json/badgerfish"},url:a,data:{}}},j=function(a){var b=i(e);return b.data={"ib4p:completeTaskRequest":{"@xmlns":{ib4p:"http://www.intalio.com/bpms/workflow/ib4p_20051115"},"ib4p:taskMetaData":{"ib4p:taskId":{$:h.id}},"ib4p:participantToken":{$:h.token},"ib4p:user":{$:h.user},"ib4p:taskOutput":a}},b},k=function(){var a=i(d);return a.data={"tas:getTaskRequest":{"@xmlns":{tas:"http://www.intalio.com/BPMS/Workflow/TaskManagementServices-20051109/"},"tas:taskId":{$:h.id},"tas:participantToken":{$:h.token}}},a},l=function(c,d){var e=b.defer();return a(c(d)).success(function(a){e.resolve(a)}).error(function(a){e.reject(a)}),e.promise};return{getTask:function(){return l(k)},completeTask:function(a){return l(j,a)}}}]),angular.module("vendorInquiryCustomFormApp").run(["$templateCache",function(a){a.put("views/main.html",'<br> <div class="footer/"> <div ng-if="object"> <div class="panel panel-header"> <div class="panel-heading"> <h1>Get vendors quote for request # {{RequestId}}</h1> </div> </div> <div class="panel-body"> <div class="row"> <div class="col-md-6"> <div class="list-group"> <div class="list-group-item"> <h4 class="list-group-item-heading">Request ID</h4> <p class="list-group-item-text">{{RequestId}}</p> </div> <div class="list-group-item"> <h4 class="list-group-item-heading">Customer ID</h4> <p class="list-group-item-text">{{CustomerId}}</p> </div> <div class="list-group-item"> <h4 class="list-group-item-heading">Event datatime</h4> <p class="list-group-item-text">{{EventDateTime}}</p> </div> <div class="list-group-item"> <h4 class="list-group-item-heading">Event duration</h4> <p class="list-group-item-text">{{EventDuration}} hour(s)</p> </div> </div> </div> <div class="col-md-6"> <div class="list-group"> <div class="list-group-item"> <h4 class="list-group-item-heading">Event Type</h4> <p class="list-group-item-text">{{EventType}}</p> </div> <div class="list-group-item"> <h4 class="list-group-item-heading">Event Location</h4> <p class="list-group-item-text">{{Location}}</p> </div> <div class="list-group-item"> <h4 class="list-group-item-heading">Request type</h4> <p class="list-group-item-text">{{RequestType}}</p> </div> <div class="list-group-item"> <h4 class="list-group-item-heading">Urgency</h4> <p class="list-group-item-text">{{Urgency}}</p> </div> </div> </div> </div> <div class="row"> <div class="col-md-12"> <form class="form-inline" ng-submit="addVendor()"> <table datatable="ng" dt-options="dtOptions" class="row-border hover table"> <thead> <tr> <th> <div class="form-group"> <label> <input class="form-control" name="resource" ng-model="newVendor.resource"> </label> </div> </th> <th> <div class="form-group"> <label> <input class="form-control" name="vendor" ng-model="newVendor.vendor"> </label> </div> </th> <th> <div class="form-group"> <label> <input class="form-control" name="cost" ng-model="newVendor.cost"> </label> </div> </th> <th> <div class="form-group"> <button type="submit" class="btn btn-success"><i class="fa fa-plus"></i></button> <button type="button" class="btn btn-info" ng-if="editing == true" ng-click="cancel()"><i class="fa fa-undo"></i></button> </div> </th> </tr> <tr> <th>Resource</th> <th>Vendor</th> <th>Cost</th> <th></th> </tr></thead> <tbody> <tr ng-repeat="entry in vendors"> <td>{{ entry.resource }}</td> <td>{{ entry.vendor }}</td> <td>{{ entry.cost }}</td> <td> <button type="button" ng-click="editVendor($index)" class="btn btn-warning"><i class="fa fa-edit"></i></button> <button type="button" ng-click="removeVendor($index)" class="btn btn-danger"><i class="fa fa-trash-o"></i></button> </td> </tr> </tbody> </table> </form> </div> </div> <div class="row"> <div class="col-md-12"> <button class="btn btn-primary pull-right" ng-click="complete()">Submit</button> </div> </div> </div> </div></div>')}]);