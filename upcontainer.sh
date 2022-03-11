docker container run -it --mount type=bind,src=$(pwd)/src,dst=/work/src\
                         --mount type=bind,src=$(pwd)/bin,dst=/work/bin\
                         nim-gui-app:latest
