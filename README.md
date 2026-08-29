# 🚀 Data Clusters CLI Automation Suite

A centralized collection of modular Command Line Interfaces (CLIs) built with **Bashly** to automate and standardize the deployment, orchestration, and maintenance of 4 big-data clusters across environments at **Derak Cloud**.

---

## 📌 Overview

Managing distributed infrastructure and multi-container topologies manually can be error-prone and tedious. This project wraps **Docker Compose** workflows into production-ready standalone executable CLIs, offering unified commands across all clusters while preserving cluster-specific lifecycle logic.

### 🧩 Included Clusters

| Cluster | CLI Binary | Default `base_path` | Purpose & Components |
| :--- | :--- | :--- | :--- |
| **ClickHouse** | `ch_cli` | `/opt/clickhouse/` | High-performance columnar DBMS for real-time analytical queries. |
| **ELK Stack** | `elk_cli` | `/opt/elk/` | Centralized log ingestion and visualization (Elasticsearch 7.16, Logstash, Kibana). |
| **Hadoop** | `hadoop-cli` | `/opt/hadoop/` | Distributed storage & resource management (HDFS DataNode, YARN, Custom Configs). |
| **PrestoDB** | `presto_cli` | `/opt/presto/` | Distributed SQL query engine (Coordinator + Worker node setup). |

---

## 🏛️ Architecture & Project Structure

Each CLI is structured using the [Bashly](https://bashly.dannyb.co/) framework:
```text
.
├── clickhousecli/            # ClickHouse Management CLI
│   ├── ch_cli                # Compiled single-file CLI binary
│   ├── docker-compose.yml    # ClickHouse server stack
│   └── src/                  # bashly.yml definition & command scripts
├── elkcli/                   # Elastic Stack Management CLI
│   ├── elk_cli               # Compiled CLI binary
│   ├── docker-compose.yml    # ES, Logstash (Nginx pipeline), Kibana
│   └── src/                  # Command handlers (up, down, logs, exec, etc.)
├── hadoop_cli/               # Hadoop DataNode Management CLI
│   ├── hadoop-cli            # Compiled CLI binary
│   ├── docker-compose.yml    # Host-networked Hadoop DataNode container
│   ├── config/               # core-site, hdfs-site, yarn-site, workers, ssl, log4j
│   ├── Dockerfile            # Custom Hadoop build image
│   └── cli/src/              # Bashly source with flag builders & mode switch
└── prestoCli/                # PrestoDB Query Engine CLI
├── presto_cli            # Compiled CLI binary
├── docker-compose.yml    # Presto Coordinator & Worker topology
└── src/                  # Command handlers & docker-compose prefix builder
