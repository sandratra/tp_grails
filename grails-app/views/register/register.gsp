
<%@taglib  prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Location| Login</title>

    <!-- Bootstrap Core CSS -->
    <asset:stylesheet src="bootstrap.css"/>

    <!-- MetisMenu CSS -->
    <asset:stylesheet src="metisMenu.min.css"/>

    <!-- Custom CSS -->
    <asset:stylesheet src="sb-admin-2.min.css"/>

    <!-- Custom Fonts -->
    <asset:stylesheet src="font-awesome.min.css"/>

    <asset:javascript src="application.js"/>

</head>

<body>

<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="login-panel panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Veuillez-vous connecter</h3>
                </div>
                <g:if test='${flash.message}'>
                    <div class="login_message" style="color: red">${flash.message}</div>
                </g:if>
                <div class="panel-body">
                    <form action="/register/create" method="POST">
                        <fieldset>
                            <div class="form-group">
                                Pseudo: <input class="form-control" placeholder="Pseudo" name="pseudo" id="username" type="text" autofocus>
                            </div>
                            <div class="form-group">
                                Mot de passe :<input class="form-control" placeholder="mot de passe" id="password" name="password" type="password" value="">
                            </div>
                            <div class="form-group">
                                Confirmer Mot de passe :<input class="form-control" placeholder="mot de passe" id="confirm_password" name="confirm_password" type="password" value="">
                            </div>

                            <!-- Change this to a button or input when using this as a form -->
                            <button type="submit" class="btn btn-lg btn-success btn-block">S'inscrire</button>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- jQuery -->
<asset:javascript src="jquery.min.js"/>

<!-- Bootstrap Core JavaScript -->
<asset:javascript src="bootstrap.js"/>

<!-- Metis Menu Plugin JavaScript -->
<asset:javascript src="metisMenu.min.js"/>

<!-- Custom Theme JavaScript -->
<asset:javascript src="sb-admin-2.js"/>

</body>

</html>

