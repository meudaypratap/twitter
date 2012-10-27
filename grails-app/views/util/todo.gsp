<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Todo</title>
    <script type="text/javascript">
        function TaskController($http, $scope, $location) {
            $scope.tasks = [];
            $scope.tasksTypes = ["Feature", "Bug", "Enhancement"];
            $scope.defaultType = $scope.tasksTypes[0];
            $scope.statuses = ["Pending", "Complete"];
            $scope.addTask = function (name, type) {
                var task = {name:name, status:$scope.statuses[0], type:type}
                $scope.tasks.push(task);
                $scope.name = '';
            }
            $scope.removeTask = function (index) {
                $scope.tasks.splice(index, 1);
            }
        }
    </script>
</head>

<body>
<div ng-controller="TaskController">
    <table>
        <tr>
            <td style="width: 30%">
                <table>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" ng-model="name"></td>
                    </tr>
                    <tr>
                        <td>Status</td>
                        <td><select name="status" ng-model="defaultType" ng-options="type for type in tasksTypes"></select></td>
                    </tr>
                    <tr>
                        <td colspan="2"><button ng-click="addTask(name,defaultType)">Add</button></td>
                    </tr>
                </table>
            </td>
            <td>
                <table>
                    <tr><th>All ({{tasks.length}})</th><th>| Complete ({{(tasks|filter:'Complete').length}})</th><th>| Pending ({{(tasks|filter:'Pending').length}})</th></tr>
                    <tr>
                        <td>Name</td>
                        <td>Type</td>
                        <td>Action</td>
                    </tr>
                    <tr ng-repeat="task in tasks">
                        <td>{{task.name}}</td>
                        <td>{{task.type}}</td>
                        <td>

                            <button value="Remove" ng-click="removeTask($index)">Remove</button>
                            <select name="status" ng-options="status for status in statuses" ng-model="task.status"></select>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

</div>

</body>
</html>