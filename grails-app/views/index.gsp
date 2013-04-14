<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="layout" content="main"/>
    <title>Index</title>
</head>

<body>
<g:set var="appName" value="${grails.util.GrailsNameUtils.getNaturalName(g.meta(name: 'app.name'))}" scope="page"/>
<div class="span4">
    <div class="well well-small">
        <form class="form-signin">
            <h4>Please sign in</h4>
            <hr/>
            <input type="email" class="input-block-level" placeholder="Email address" name="email" id="email"
                   required="required">
            <input type="password" class="input-block-level" placeholder="Password" name="password" id="password"
                   required="required">
            <label class="checkbox">
                <input type="checkbox" value="remember-me"> Remember me - <a href="#" class="muted">Forgot Password?</a>
            </label>
            <button class="btn btn-primary" type="submit">Sign in</button>
        </form>

    </div>

    <div class="well well-small">
        <form class="form-signin">
            <h4>New User? Sign up.</h4>
            <hr/>
            <input type="text" class="input-block-level" placeholder="Full name" name="fullname" id="fullname"
                   required="required">
            <input type="email" class="input-block-level" placeholder="Email address" name="email" id="email"
                   required="required">
            <input type="password" class="input-block-level" placeholder="Password" name="password" id="password"
                   required="required">
            <button class="btn btn-primary" type="submit">Sign up</button>
        </form>

    </div>
</div>

<div class="span8">
    <div class="well well-small">
        <h4>Top Tweets</h4>
        <hr/>
        <ul class="unstyled">
            <li>
                <div class="media">
                    <a class="pull-left" href="#">
                        <img class="media-object img-rounded" src="${resource(dir: 'images', file: 'favicon.ico')}"/>
                    </a>

                    <div class="media-body">
                        <strong>uday</strong> @uday <span class="pull-right">9m</span>

                        <div class="media">
                            Hiii guys how are you
                        </div>
                    </div>
                </div>
                <hr/>
            </li>
        </ul>
    </div>
</div>

</body>
</html>