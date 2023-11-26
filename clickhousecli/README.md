**ch_cli - ClickHouse Command Line Interface**

**Overview**

'ch_cli' is a command line interface for managing ClickHouse applications within the Derak Cloud environment. It provides a set of commands to interact with ClickHouse clusters running in Docker containers.

more information about bashly : [read me](https://bashly.dannyb.co/)


base_path: Path of the application where Docker Compose files are located.

    Help: Specify the path of the application that Docker Compose files are located.

    Default: /opt/clickhouse/

**Usage**

```
ch_cli COMMAND
ch_cli [COMMAND] --help | -h
ch_cli --version | -v

```

**Commands:**

    ps: Show the process of Docker containers related to ClickHouse.
    up: Start the ClickHouse cluster.
    down: Stop the ClickHouse cluster.
    stop: Stop the services of the ClickHouse cluster.
    logs: Show the logs of the ClickHouse cluster.
    restart: Restart the ClickHouse cluster.
    exec: Execute commands within the ClickHouse containers.


**Getting Started**

Usage Examples

Show Docker Process:
```
./ch_cli ps

```

Start ClickHouse Cluster:
```
./ch_cli up

```

Stop ClickHouse Cluster:
```
./ch_cli down

```
Stop ClickHouse Services:
```
./ch_cli stop

```

Show ClickHouse Cluster Logs:
```
./ch_cli logs

```

Restart ClickHouse Cluster:
```
./ch_cli restart

```
Execute Commands in Containers:

#<container_name> = ch
```
./ch_cli exec <container_name> <command>

```

