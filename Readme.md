# SQLite Graph Extension

A lightweight, embeddable C/C++ extension that brings **graph algorithms and traversal features** directly into SQLite.  
This project enables you to **query and analyze graph-structured data using SQL** — no external graph database needed.

---

## Features

### Core Algorithms
| Algorithm | Description |
|------------|-------------|
| **BFS (Breadth-First Search)** | Layer-by-layer graph traversal for reachability and shortest paths in unweighted graphs. |
| **DFS (Depth-First Search)** | Depth exploration for connectivity, cycles, and path discovery. |
| **Dijkstra** | Shortest path in weighted graphs. |
| **A\*** | Heuristic pathfinding with custom cost and heuristic functions. |
| **PageRank** | Node ranking algorithm inspired by Google’s link analysis model. |

### Graph Schema Tools
| Utility | Description |
|----------|-------------|
| **Graph Create** | Create and register an edge table as a graph structure. |
| **Edge Insert/Delete Hooks** | Maintain internal adjacency lists and caches when edges are modified. |
| **Graph Virtual Table** | Query graph traversals as if they were standard SQLite tables. |


