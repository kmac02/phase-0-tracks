### What are some common HTTP status codes?
400s are client-side error, and 500s are server-side errors.
*404 - Not Found
*403 - Forbidden, restricted access
*500 - Internal Server Error, catchall
*503 - Gateway timeout, access to a server timed out before the page could load

### What is the difference between a GET request and a POST request? When might each be used?
*The requests specify how information is sent to a server from a client. A GET request holds all necessary information in a URL. A POST request includes information in the body of the message sent from the client. A POST method would be used when sending sensitive information, because the info is not saved in the browser history. GET requests are saved in the browser as the URL.

### Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
Cookie is information a web server sends a browser. Cookies save information for later. Like when you use the select option on a log in form "Save my username" uses cookies to store the info. When you go back to the website, the cookie is sent to the server each time the server is requested.