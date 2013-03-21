<html>
    <head>
        <title>Client Flow Example</title>
    </head>
    <body>
        <script>

    var appId = "376987082389393";

        if(window.location.hash.length == 0)
{
            url = "https://www.facebook.com/dialog/oauth?client_id=" + 
                     appId  + "&redirect_uri=" + window.location +
                     "&response_type=token";
            window.open(url);

} else {
    accessToken = window.location.hash.substring(1);
            graphUrl = "https://graph.facebook.com/me?" + accessToken +
                        "&callback=displayUser"

            //use JSON-P to call the graph
            var script = document.createElement("script");
    script.src = graphUrl;
    document.body.appendChild(script);  
}

function displayUser(user) {
    userName.innerText = user.name;
}
        </script>
        <p id="userName"></p>
    </body>
</html>
