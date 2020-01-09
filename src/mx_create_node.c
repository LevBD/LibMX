#include "libmx.h"

t_list *mx_create_node(void *data) {
    t_list *n_node = malloc(sizeof(t_list));

    if (n_node) {
        n_node->data = data;
        n_node->next = NULL;
    }
    return n_node;
}