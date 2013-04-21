<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <g:set var="appName" value="${grails.util.GrailsNameUtils.getNaturalName(g.meta(name: 'app.name'))}" scope="page"/>
    <g:set var="bootstrapTheme"
           value="${grailsApplication.config.bootstrap.theme ? '-' + grailsApplication.config.bootstrap.theme : ''}"
           scope="page"/>
    <title>${appName} | <g:layoutTitle/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'custom.css')}"/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap' + bootstrapTheme + '.css')}"/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-responsive.css')}"/>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-1.8.0.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'bootstrap.js')}"></script>
    <g:javascript src="ang.js"/>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'application.js')}"></script>
    <g:layoutHead/>
    <r:layoutResources/>
</head>

<body>
<div ng-app="twitter">
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container-fluid">
                <a class="brand" href="${createLink(uri: '/')}">${appName}</a>

                <form class="navbar-search pull-right">
                    <input type="text" class="search-query" placeholder="Search">
                </form>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row-fluid">
            <alert></alert>
            <div class="span12 no-margin">
                <g:layoutBody/>
            </div>
        </div>
        <hr>
        <footer>
            <p>&copy; Binary Villains : Farji Naarad.</p>
        </footer>
    </div>
</div>
</body>
</html>
