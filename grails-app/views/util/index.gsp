<%@ page contentType="text/html;charset=UTF-8" %>
<html >
<head>
    <meta name="layout" content="main"/>
    <title>Todo</title>
    <script type="text/javascript">
        function ListController($http, $scope, $location) {
            $scope.users = [
                {name:'uday', age:27},
                {name:'prakash', age:24},
                {name:'puneet', age:25},
                {name:'hitesh', age:26},
                {name:'tarun', age:26},
                {name:'aman', age:27}
            ]
        }
    </script>
</head>

<body>
<div ng-controller="ListController">
    <table>
        <tr><th>Name</th><th>Age</th></tr>
        <tr ng-repeat="user in users | orderBy:'name':true">
            <td>{{user.name}}</td>
            <td>{{user.age}}</td>
        </tr>
    </table>
</div>

</body>
</html>