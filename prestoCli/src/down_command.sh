docker_compose_prefix_builder "$(declare -p args)"
echo $docker_compose_file_path

eval "docker-compose $docker_compose_file_path down"



