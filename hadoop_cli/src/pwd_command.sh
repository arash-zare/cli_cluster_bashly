echo "# this file is located in 'src/pwd_command.sh'"
echo "# code for 'hadoop-cli pwd' goes here"
echo "# you can edit it freely and regenerate (it will not be overwritten)"
docker_compose_prefix_builder "$(declare -p args)"
echo "${BASE_PATH}"

