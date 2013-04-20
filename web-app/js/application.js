if (typeof jQuery !== 'undefined') {
    (function ($) {
        $('#spinner').ajaxStart(function () {
            $(this).fadeIn();
        }).ajaxStop(function () {
                $(this).fadeOut();
            });
    })(jQuery);
}
$(document).ready(function () {
    $('.pagination').children().wrapAll('<ul>');
    $('.pagination ul').children().wrap('<li>');
});

var app = angular.module('twitter', []);
app.directive('login', function () {
    return {
        restrict: 'E',
        templateUrl: 'login.html'
    }
});
app.directive('signup', function () {
    return {
        restrict: 'E',
        templateUrl: 'signup.html'
    }
});
app.directive('tweets', function () {
    return {
        restrict: 'E',
        templateUrl: 'tweets.html'
    }
});
app.directive('alert', function () {
    return {
        restrict: 'E',
        templateUrl: 'alert.html',
        link: function (scope) {
            scope.isVisible = false;
        }
    }
});
