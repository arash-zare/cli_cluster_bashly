docker_compose_prefix_builder "$(declare -p args)"
docker_compose_up_flag_builder "$(declare -p args)"
eval "docker-compose $docker_compose_file_path up $docker_compose_flags"