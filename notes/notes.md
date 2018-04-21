# Hardware
- cpu
  - Intel Core i7-3770K @ 3.5GHz
- GPU
  - NVIDIA GeForce GTX 670
- RAM
  - 16GB
  - 1600MHz
- Storage
  - 400GB Partition of 2TB drive
  - 

# Software
## Core
- Update will always create new value/cannot be recorded

## database-binding implementation mapping
- table -> Edge or else ignored
- key -> Used as ID if possible
- values -> Added as properties

Key has special position as it must be enough to look up a node/edge.

Labels or Id you have to consider reading them again from the database

How has the API be implemented to fit into our structure AND WHY (Design)

## Neo4j
Looking up edges (relationships) is not directly supported without index.

## Sparksee
Maximum Size of values is 2048 Characters (2KB)

# Thesis structure
## Evaluation
- Comparison with other paper result

Also use runs without operations on edges, because some databases don't support it natively.

This is no problem if written in one language only.

System load (mem, cpu etc.)


# Papers
## How Well du Graph-Processing Platforms Perform?
Table 1 - good example of how to show measurements

- Giraph
- GraphLab
- Neo4j

## XGDBench: A Benchmarking Platform for Graph Stores
- Allegrograph
- Neo4j
- OrientDB
- Fuseki/Jena

## Graphalytics
- Giraph
- GraphX
- MapReduce
- Neo4j

## LNCS 6185 - Web-Age Information Management
- DEX (now Sparksee)
- Neo4j
- Jena
- HypergraphDB
