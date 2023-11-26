docker_compose_restart_flag_builder() {
  eval "declare -A fargs="${1#*=}
  if [ "${fargs[service]}" != "all" ]; then
    docker_compose_flags+="${fargs[service]}"
  fi
}
