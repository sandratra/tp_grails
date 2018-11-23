<g:each in="${messages}" var="message">
    <div>
        <span class="nickname">${message.expediteur}</span> - <span class="msg">${message.messages}</span>
    </div>
</g:each>