# Create a new node with the given data and links
# Returns a pointer to the new node, or NULL on error

# Create a new list with an optional dummy head
# Returns a pointer to the new list, or NULL on error

# Destroy a single given node, assuming it has been unlinked
# Optionally destroy the data contained in the node
# Returns the next node specified by the link

# Destroy all nodes in a given list
# Optionally destroy all data in each node

# To insert a node into a linked list, you need a reference to the node before where the new node is going to be inserted. Then it's a simple matter of re-linking the links in those two nodes. The new node's link should be set to the previous node's link, and the previous node's link should be set to the new node. Keep in mind that 2's link cannot be reset to point to 3 until after 3's link has been set. Otherwise 2's link would be lost and you wouldn't know what to set 3's link to. Order of operations is very important here.
# Insert a new node after the given node
# Returns a pointer to the new node or NULL on failure

# Each element (we will call it a node) of a list is comprising of two items - the data and a reference to the next node. The last node has a reference to null. The entry point into a linked list is called the head of the list. It should be noted that head is not a separate node, but the reference to the first node. If the list is empty then the head is a null reference.

#to add at the beginning we create a new node that the head points to?

#to traverse we start with the head and access each node until we reach nil.

#to add at the end of the list, we traverse and stop at the last node to add

#to insert after a node, we find that node and insert a new node after it.

#when deleting we have to be mindful of the fact that the item might not be in the list, that the only things might be the head, and that the list might be empty.
