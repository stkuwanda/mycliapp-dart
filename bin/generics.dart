class Node<T> {
  T value;
  Node<T>? leftChild;
  Node<T>? rightChild;

  Node(this.value);

  @override
  String toString() {
    final left = leftChild?.toString() ?? '';
    final parent = value.toString();
    final right = rightChild?.toString() ?? '';
    return '$left $parent $right'; // in-order traversal
  }
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

class BinarySearchTree<E extends Comparable<E>> {
  Node<E>? root;

  void insert(E value) {
    root = _insertAt(root, value);
  }

  Node<E> _insertAt(Node<E>? node, E value) {
    // Base case
    if (node == null) {
      return Node(value);
    }

    // Recursive case
    if (value.compareTo(node.value) < 0) {
      node.leftChild = _insertAt(node.leftChild, value);
    } else {
      node.rightChild = _insertAt(node.rightChild, value);
    }

    // Return the unchanged node pointer
    return node; // always returns the root node in the end
  }

  @override
  String toString() => root.toString(); // will trigger in-order traversal on print
}

void createAndPrintBST() {
  var tree = BinarySearchTree<num>();
  tree.insert(7);
  tree.insert(1);
  tree.insert(9);
  tree.insert(0);
  tree.insert(5);
  tree.insert(8);

  print(tree);
}

void main() {
  // final tree = createTree([7, 1, 9, 0, 5, 8]);

  // treeManualPrint(tree);
  // printPreOrder(tree);
  createAndPrintBST();
}
