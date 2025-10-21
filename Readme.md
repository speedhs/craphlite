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

---

## Build & Development

This project uses a **Makefile** to simplify compilation, testing, and code quality workflows.

### Prerequisites
- GCC or Clang compiler
- SQLite development headers (`libsqlite3-dev` on Linux)
- `pkg-config` for SQLite
- Optional: `clang-format` and `cppcheck` for formatting and linting

---

### Makefile Commands

| Command | Description |
|---------|-------------|
| `make` | Build the **release version** of `craphlite.so` with optimizations. |
| `make debug` | Build a **debug version** with debug symbols and compiler warnings enabled. |
| `make clean` | Remove compiled objects and the shared library. |
| `make test` | Load the extension in an in-memory SQLite database to verify it works. |
| `make lint` | Run `cppcheck` to detect potential code issues and bugs. |
| `make format` | Format all source and header files using `clang-format`. |

---

### Example Workflow

```bash
# Format code
make format

# Check code quality
make lint

# Build debug version
make debug

# Test extension loads correctly in SQLite
make test
