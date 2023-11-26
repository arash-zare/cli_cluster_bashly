docker_compose_prefix_builder "$(declare -p args)"
docker_compose_restart_flag_builder "$(declare -p args)"
eval "docker-compose $docker_compose_file_path restart $docker_compose_flags"