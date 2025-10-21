#include "sqlite3ext.h"      // Required for SQLite extensions
SQLITE_EXTENSION_INIT1        // Must be declared once per .so

#include "craphlite.h"        // Your own global header (we’ll create this next)
// #include "graph_core.h"       // For graph storage setup (stub now)
// #include "algorithms.h"       // For BFS, DFS, etc. (stub now)
// #include "virtual_table.h"    // For SQL integration (stub now)


int sqlite3_craphlite_init(
    sqlite3 *db,
    char **pzErrMsg,
    const sqlite3_api_routines *pApi
){
    SQLITE_EXTENSION_INIT2(pApi);

    // Initializing core graph structures
    if (craphlite_graph_init() != 0){
        *pzErrMsg = sqlite3_mprintf("Falied to initialize graph core");
        return SQLITE_ERROR;
    }

    // Register algorithms
    craphlite_register_algorithms(db);

    // Register virtual table interfaces
    craphlite_register_vtable(db);

    return SQLITE_OK;
}
