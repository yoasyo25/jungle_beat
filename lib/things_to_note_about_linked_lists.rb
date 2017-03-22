#append method
#if there is no head node, then set
#the new node to head
#if there is a head node, then set the
#head to a variable called current
# e.g current = @head
#and until the next_node of current reaches nil, loop through the list reassigning current to next_node
#e.g current = current.next_node
#once next_node is nil then set the new node at the next_node of the current node that previously had nil as its next node


#to pop an element from the list, we have to find the node that has a next_node == nil ? and we have to change the next_node pointer of the previous to last node to equal nil, there by breaking the link between the last and previous to last element. Then we want to return the data of the last element that we poped. 
