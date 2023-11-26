docker_compose_prefix_builder "$(declare -p args)"
docker_compose_logs_flag_builder "$(declare -p args)"
eval "docker-compose $docker_compose_file_path logs $docker_compose_flags"
