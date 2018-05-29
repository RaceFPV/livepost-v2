$(document).on "turbolinks:load", ->
    $('html,body').animate { scrollTop: document.body.scrollHeight }, 'fast'
    
    $("#chatroom_form").on "keypress", (e) ->
        if e && e.keyCode == 13
            e.preventDefault()
            $("#chatroom_form").submit()
            
    $("#chatroom_form").on "submit", (e) ->
        e.preventDefault()
        
        chatroom_id = $("[data-behavior='messages']").data("chatroom-id")
        body = $("#message_body")
        
        App.chatrooms.send_message(chatroom_id, body.val())
        
        body.val("")
