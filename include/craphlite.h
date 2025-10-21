#ifndef CRAPHLITE_H
#define CRAPHLITE_H

int craphlite_graph_init(void);
void craphlite_register_algorithms(sqlite3 *db);
void craphlite_register_vtable(sqlite3 *db);

#endif
