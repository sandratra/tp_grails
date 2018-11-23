<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="template" />
        <g:set var="entityName" value="${message(code: 'users.label', default: 'Users')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="list-users" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <!-- <f:table collection="${usersList}" /> -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    Kitchen Sink
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Username</th>
                                    <th>Jouer contre</th>
                                </tr>
                            </thead>
                            <tbody>
                                <g:each in="${usersList}" var="user" status="counter">
                                    <tr>
                                        <td>${counter+1}</td>
                                        <td><a href="users/show/${user.id}">${user.username}</a></td>
                                        <th><a href="jeux?user1=<sec:loggedInUserInfo field='id'/>&user2=${user.id}">Jouer</a></th>
                                        <td><a href="message/join?nickname=${user.username}">Discuter</a></td>
                                    </tr>
                                </g:each>
                            </tbody>
                        </table>
                    </div>
                    <!-- /.table-responsive -->
                </div>
                <!-- /.panel-body -->
            </div>
            <div class="pagination">
                <g:paginate total="${usersCount ?: 0}" />
            </div>
        </div>
    </body>
</html>