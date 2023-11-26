docker_compose_prefix_builder "$(declare -p args)"
docker_compose_build_flag_builder "$(declare -p args)"
eval "docker-compose $docker_compose_file_path build $docker_compose_flags"