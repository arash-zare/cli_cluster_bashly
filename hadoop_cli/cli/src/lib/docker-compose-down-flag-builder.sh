docker_compose_down_flag_builder() {
  eval "declare -A fargs="${1#*=}
  if [ "${fargs[--full]}" ]; then
    docker_compose_flags+="-v"
  fi
  docker_compose_flags+=" "
  if [ "${fargs[service]}" != "all" ]; then
    docker_compose_flags+="${fargs[service]}"
  fi
}
