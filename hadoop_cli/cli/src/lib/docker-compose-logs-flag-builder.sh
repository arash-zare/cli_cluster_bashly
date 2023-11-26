docker_compose_logs_flag_builder() {
  eval "declare -A fargs="${1#*=}
  docker_compose_flags+="-f --tail $tail_line_number"
  docker_compose_flags+=" "
  if [ "${fargs[service]}" != "all" ]; then
    if [ "${fargs[service]}" == "backend" ]; then
          docker_compose_flags+="${aqua_services[*]}"
    else
          docker_compose_flags+="${fargs[service]}"
    fi
  fi
}
