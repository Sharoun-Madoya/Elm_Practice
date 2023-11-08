# Elm_Practice


#referal notes 
elm init --creates elm.json and src

elm reactor -- This starts a server at http://localhost:8000. 


# Create an index.html file that you can open in your browser.
elm make src/Main.elm

# Create an optimized JS file to embed in a custom HTML document.
elm make src/Main.elm --optimize --output=elm.js


1. elm install elm/http

2. elm install elm/json


This adds these dependencies into your elm.json file, making these packages available in your project. That will let you say import Http and use functions like Http.get in your programs.