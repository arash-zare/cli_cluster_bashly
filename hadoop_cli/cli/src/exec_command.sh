docker_compose_prefix_builder "$(declare -p args)"
eval "docker-compose $docker_compose_file_path exec ${args['service']} ${args['command']}"
