<!DOCTYPE html>
<html>

<head>
<!-- <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.15/angular.min.js"></script> -->
<script src="jquery.js"></script>
<script src="angular.js"></script>
<script src="bootstrap.js"></script>
<link href="bootstrap.css" rel="stylesheet">
</head>

<body>

<div class="form-group" data-ng-app="angularJSWebApp" data-ng-controller="appController" data-ng-init="first='Chandra'; last='Kakarla'; points=[1,15,19,2,40]"><br/>
 	<p class="text-info">Name Name: <input class="form-control" type="text" data-ng-model="first"> <span data-ng-bind="first"></span></p>
	<p>Last Name: <input class="form-control" type="text" data-ng-model="last"> <span data-ng-bind="last"/></p>
	<span class="bg-primary">{{ fullName()|uppercase }} </span> <br/>
	
	<input class="form-control" type="number" data-ng-model="val1">
	<input class="form-control" type="number" data-ng-model="val2">
	<span class="bg-info">{{ addition()|currency }}</span><br/>
	<span class="bg-info">{{ multiply()|currency }}</span><br/>
	<span class="bg-info">{{ devide()|currency }}</span>

<p>The points are {{ points[2] }}</p><br/>

<ul><li ng-repeat="x in points">
{{x}}
</li></ul>

<select class="form-control" ng-options="name.code as name.name for name in names | orderBy:'name'" ng-model="name">
   <option style="display:none" value="">select a region</option>
</select>
<br>selected: {{name}}

<table class="table table-striped table-hover">
<tr ng-repeat="x in users | orderBy:'Country'">
<td>{{x.Name}}</td>
<td>{{x.Country}}</td>
</tr>
</table>


<ul>
  <li ng-repeat="x in users">
    {{ x.Name + ', ' + x.Country }}
  </li>
</ul>

</div>
<script src="appController.js" ></script>
</body>

</html>