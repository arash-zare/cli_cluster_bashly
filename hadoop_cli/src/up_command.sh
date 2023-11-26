echo "# this file is located in 'src/up_command.sh'"
echo "# code for 'hadoop-cli up' goes here"
echo "# you can edit it freely and regenerate (it will not be overwritten)"
docker_compose_prefix_builder "$(declare -p args)"
docker_compose_up_flag_builder "$(declare -p args)"
eval "docker-compose $docker_compose_file_path up $docker_compose_flags"
	
#docker_compose_file_path="-f ${BASE_PATH}docker-compose.yml  "
#docker_compose_flags+="${fargs[service]}"
eval "docker-compose $docker_compose_file_path up $docker_compose_flags"

