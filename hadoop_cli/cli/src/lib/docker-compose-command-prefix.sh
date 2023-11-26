docker_compose_prefix_builder(){
    eval "declare -A fargs="${1#*=}
    if [ "${MODE}" == "dev" ]; then
      docker_compose_file_path="-f ${BASE_PATH}docker-compose.yml  --env-file ${BASE_PATH}.env.dev"
    elif [ "${MODE}" == "prod" ]; then
      docker_compose_file_path="-f ${BASE_PATH}docker-compose.yml --env-file ${BASE_PATH}.env.prod"
    fi
}