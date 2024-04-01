cd("web-app/") # Change directory

using GenieFramework

Genie.loadapp() # Load app
up(8000, "0.0.0.0") # Start server
