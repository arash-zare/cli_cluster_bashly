docker_compose_prefix_builder(){
    eval "declare -A fargs="${1#*=}
    if [ "${MODE}" == "master" ]; then
      docker_compose_file_path="-f ${BASE_PATH}docker-compose.yml -f ${BASE_PATH}docker-compose.dev.yml"
      node_runner="ts-node-transpile-only"
      script_path="/app/src/scripts/"
      endpoint_base=https://api.staging.derakcloud.ir
    elif [ "${MODE}" == "slave" ]; then
      docker_compose_file_path="-f ${BASE_PATH}docker-compose.yml -f ${BASE_PATH}docker-compose.deploy.yml"
      node_runner="node"
      script_path="/app/dist/scripts/"
      endpoint_base=https://api.staging.derakcloud.ir
    elif [ "${MODE}" == "prod" ]; then
      docker_compose_file_path="-f ${BASE_PATH}docker-compose.yml"
      node_runner="node"
      script_path="/app/dist/scripts/"
      endpoint_base=https://api.derak.cloud
    fi
      if [ "${ENV_ENABLE}" == "true" ]; then
        docker_compose_file_path+=" --env-file ${BASE_PATH}.env.prod"
      fi

    docker_compose_file_path+=" -f ${BASE_PATH}docker-compose.yml"
      
}

