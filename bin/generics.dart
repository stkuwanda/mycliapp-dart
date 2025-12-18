class Node<T> {
  T value;
  Node<T>? leftChild;
  Node<T>? rightChild;

  Node(this.value);
}

Node<E>? createTree<E>(List<E> nodes, [int index = 0]) {
  if (index >= nodes.length) return null; // Base case

  final node = Node(nodes[index]);

  final leftChildIndex = 2 * index + 1;
  final rightChildIndex = 2 * index + 2;

  // recursive calls
  node.leftChild = createTree(nodes, leftChildIndex);
  node.rightChild = createTree(nodes, rightChildIndex);

  return node;
}

void printPreOrder(Node? node) {
  if (node == null) return;

  print(node.value);
  printPreOrder(node.leftChild);
  printPreOrder(node.rightChild);
}


void treeManualPrint(Node<int>? tree) {
  print(tree?.value);
  print(tree?.leftChild?.value);
  print(tree?.rightChild?.value);
  print(tree?.leftChild?.leftChild?.value);
  print(tree?.leftChild?.rightChild?.value);
  print(tree?.rightChild?.leftChild?.value);
  print(tree?.rightChild?.rightChild?.value);
}

void main() {
  final tree = createTree([7, 1, 9, 0, 5, 8]);

  treeManualPrint(tree);
  printPreOrder(tree);
}
