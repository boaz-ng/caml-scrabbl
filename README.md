# Running the app using Docker
(Windows + WSL2 for now)
1. Install VcXsrv
Download: https://sourceforge.net/projects/vcxsrv/
Run XLaunch, and:
* Choose "Multiple windows"
* Set display number to 0
* Enable: "Disable access control"
* Finish and keep it running
Note: this is if you want to run it with the GUI enabled. CLI coming soon!

2. Set up Docker
Make sure Docker Desktop is installed and with wsl2 enabled. To check, make sure `docker --version` and `docker info` return correct values when run in the wsl2 terminal.

3. Build Docker image
Navigate to the directory where this file is stored, and enter
```docker build -t caml-scrabbl .```

4. Set DISPLAY
In WSL terminal, enter:
```export DISPLAY=$(ip route | grep default | awk '{print $3}'):0```

5. Run the Docker container
```docker run -it -e DISPLAY=$DISPLAY caml-scrabbl```

# AUTHORS
Boaz Ng (bn229)
Lea Duesterwald (lkd46)  
Jasmine Dietiker (jfd237)  
