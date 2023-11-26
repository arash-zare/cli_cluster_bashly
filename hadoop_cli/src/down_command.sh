echo "# this file is located in 'src/down_command.sh'"
echo "# code for 'hadoop-cli down' goes here"
echo "# you can edit it freely and regenerate (it will not be overwritten)"
#eval "declare -A fargs="${1#*=}
docker_compose_prefix_builder "$(declare -p args)"
docker_compose_down_flag_builder "$(declare -p args)"
#docker_compose_file_path="-f ${BASE_PATH}docker-compose.yml  "
#docker_compose_flags+="${fargs[service]}"
eval "docker-compose $docker_compose_file_path down $docker_compose_flags"
