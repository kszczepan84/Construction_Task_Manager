<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title> Chat </title>
    <link rel="stylesheet" href="/main.css" />
</head>
<c:import url="/WEB-INF/views/homepage/header.jsp"/>
<body background="static/18.jpg"
      style="background-position: center; background-repeat: no-repeat; background-size: cover;">
<noscript>
    <h2>Sorry! Your browser doesn't support Javascript</h2>
</noscript>

<div id="username-page">
    <div class="username-page-container">
        <h1 class="title">Type your username</h1>
        <form id="usernameForm" name="usernameForm">
            <div class="form-group">
                <input type="text" id="name" placeholder="Username"
                       autocomplete="off" class="form-control" />
            </div>
            <div class="form-group">
                <button type="submit" class="accent username-submit">Start
                    Chatting</button>
            </div>
        </form>
    </div>
</div>

<div id="chat-page" class="hidden">
    <div class="chat-container">
        <div class="chat-header">
            <h2>Construction Task Manager Chat</h2>
        </div>
        <div class="connecting">Connecting...</div>
        <ul id="messageArea">

        </ul>
        <form id="messageForm" name="messageForm" nameForm="messageForm">
            <div class="form-group">
                <div class="input-group clearfix">
                    <input type="text" id="message" placeholder="Type a message..."
                           autocomplete="off" class="form-control" />
                    <button type="submit" class="primary">Send</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script
        src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.4/sockjs.min.js"></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script src="/js/main.js"></script>
</body>
</html>