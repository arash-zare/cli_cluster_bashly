docker_compose_up_flag_builder() {
  eval "declare -A fargs="${1#*=}
  docker_compose_flags+="-d "
  if [ "${fargs[--build]}" ]; then
    docker_compose_flags+="--build"
  fi
  docker_compose_flags+=" "
  if [ "${fargs[service]}" != "all" ]; then
    docker_compose_flags+="${fargs[service]}"
  fi
}

