echo "# this file is located in 'src/build_command.sh'"
echo "# code for 'hadoop-cli build' goes here"
echo "# you can edit it freely and regenerate (it will not be overwritten)"
#docker_compose_prefix_builder "$(declare -p args)"
#docker_compose_build_flag_builder "$(declare -p args)"
#docker_compose_file_path="-f ${BASE_PATH}docker-compose.yml  --env-file ${BASE_PATH}.env.dev"
docker_compose_prefix_builder "$(declare -p args)"
docker_compose_build_flag_builder "$(declare -p args)"

#docker_compose_file_path="-f ${BASE_PATH}docker-compose.yml  "
#docker_compose_flags+="${fargs[service]}"
echo $docker_compose_file_path
eval "docker-compose $docker_compose_file_path build $docker_compose_flags"

