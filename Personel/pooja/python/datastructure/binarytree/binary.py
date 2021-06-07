
from binarytree import Node
root = Node(3)
root.left = Node(6)
root.right = Node(8)
  
print('Binary tree :', root)
print('List of nodes :', list(root))

print('Inorder of nodes :', root.inorder)
  
print('Size of tree :', root.size)
print('Height of tree :', root.height)