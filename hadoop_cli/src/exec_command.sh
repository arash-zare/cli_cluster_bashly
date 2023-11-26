echo "# this file is located in 'src/exec_command.sh'"
echo "# code for 'hadoop-cli exec' goes here"
echo "# you can edit it freely and regenerate (it will not be overwritten)"
docker_compose_prefix_builder "$(declare -p args)"
eval "docker-compose $docker_compose_file_path exec ${args['service']} ${args['command']}"

