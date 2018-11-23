<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="template" />
    <g:set var="entityName" value="${message(code: 'users.label', default: 'Users')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<div id="list-users" class="content scaffold-list" role="main">
    <h1>Chat avec ${session.nickname}</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
<!-- <f:table collection="${usersList}" /> -->
    <div class="panel panel-default">
        <div class="panel-heading">
            ${session.nickname}
        </div>
        <!-- /.panel-heading -->
        <div class="panel-body">
            <div class="table-responsive">
                <input type="text" id="messageBox" name="message" onkeypress="messageKeyPress(this,event);"/>
                <div id="chatMessages"></div>
                <g:each in="${messages}" var="message">
                    <div>
                        <span class="nickname">${message.expediteur}</span> - <span class="msg">${message.messages}</span>
                    </div>
                </g:each>
                <div id="temp"></div>
            </div>
            <!-- /.table-responsive -->
        </div>
        <!-- /.panel-body -->
    </div>
    <div class="pagination">
        <g:paginate total="${usersCount ?: 0}" />
    </div>
</div>
<script>
    function messageKeyPress(field,event) {
        var theCode = event.keyCode ? event.keyCode : event.which ? event.which : event.charCode;
        var message = $('#messageBox').val();
        if (theCode == 13){
            <g:remoteFunction action="submitMessage" params="\'message=\'+message" update="temp"/>
            $('#messageBox').val('');
            return false;
        } else {
            return true;
        }
    }
    function retrieveLatestMessages() {
        <g:remoteFunction action="retrieveLatestMessages" update="chatMessages"/>
    }

    function pollMessages() {
        console.log("test");
        retrieveLatestMessages();
        setTimeout(pollMessages, 2000);
    }
    pollMessages();
</script>
</body>
</html>