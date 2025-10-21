#ifndef CRAPHLITE_H
#define CRAPHLITE_H

int craphlite_graph_init(void)
{
    return 0;
    // Initializes vertices and edges
}
extern void craphlite_register_algorithms(sqlite3 *db){
    // Placeholder for now
    // Later this will register graph tables or triggers
    
}
extern void craphlite_register_vtable(sqlite3 *db){
    // Creates virtual tables
}

#endif
