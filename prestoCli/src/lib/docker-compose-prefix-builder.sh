## Add any function here that is needed in more than one parts of your
## application, or that you otherwise wish to extract from the main function
## scripts.
##
## Note that code here should be wrapped inside bash functions, and it is
## recommended to have a separate file for each function.
##
## Subdirectories will also be scanned for *.sh, so you have no reason not
## to organize your code neatly.
##
docker_compose_prefix_builder(){
    eval "declare -A fargs="${1#*=}
    docker_compose_file_path+=" -f ${BASE_PATH}docker-compose.yml"
}

