docker_compose_prefix_builder "$(declare -p args)"

service=${args[service]}

if [ $service == "all" ]
then
    eval "docker-compose $docker_compose_file_path up -d "
else
    eval "docker-compose $docker_compose_file_path up -d $service"
fi
