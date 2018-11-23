<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="template" />
        <g:set var="entityName" value="${message(code: 'resultat.label', default: 'Resultat')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-resultat" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-resultat" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.resultat}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.resultat}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.resultat}" method="POST">
                <fieldset class="form">
                    <f:all bean="resultat"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
            <form>
                <fieldset>
                    <div class="form-group">
                        Pseudo: <input class="form-control" name="pseudo" id="username" type="text" autofocus>
                    </div>
                    <div class="form-group">
                        Mot de passe :<input class="form-control" id="password" name="password" type="password" value="">
                    </div>
                    <div class="form-group">
                        Confirmer Mot de passe :<input class="form-control"  id="confirm_password" name="confirm_password" type="password" value="">
                    </div>
                    <input type="hidden" name="user1" value="<sec:loggedInUserInfo field='id'/>" >
                    <!-- Change this to a button or input when using this as a form -->
                    <button type="submit" class="btn btn-lg btn-success btn-block">S'inscrire</button>
                </fieldset>
            </form>
        </div>
    </body>
</html>
