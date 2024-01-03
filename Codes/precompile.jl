cd("web-app/") # Change directory

using GenieFramework
using HTTP

Genie.loadapp() # Load app
up(async=true) # Start server

HTTP.get("http://localhost:8000/");
