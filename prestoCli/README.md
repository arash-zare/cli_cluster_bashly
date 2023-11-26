**presto_cli**

Command line interface for Presto applications by Derak Cloud. This CLI provides essential commands for managing a Presto cluster, including starting, stopping, and viewing logs. Designed for simplicity and ease of use.

Environment Variables

The presto_cli tool supports the following environment variable:

    base_path: Path of the application where Docker Compose files are located.

        Help: Specify the path of the application that Docker Compose files are located.

        Default: /opt/presto/



**Commands**

```
./presto_cli --help

```

ps: Show the process of the Docker container.

```
./presto_cli ps <container_name>

```
down: Stop the Presto cluster.
```
./presto_cli down

```

up: Start the Presto cluster.

```
./presto_cli up <container_name>
```

stop: Stop the service of the Presto cluster.
```
./presto_cli stop <container_name>
```
logs: Show logs of the Presto cluster.

```
./presto_cli logs <container_name>

```
restart: Restart the Presto cluster.

```
./presto_cli restart <container_name> 
```

exec: Execute commands in the containers.
```
./presto_cli exec <container_name> <command>

```

