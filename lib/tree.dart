class IntNode {
  IntNode(this.value);

  int value;
  IntNode? leftChild;
  IntNode? rightChild;
}

class StringNode {
  StringNode(this.value);

  String value;
  StringNode? leftChild;
  StringNode? rightChild;
}

IntNode createIntTree() {
  final zero = IntNode(0);
  final one = IntNode(1);
  final five = IntNode(5);
  final seven = IntNode(7);
  final eight = IntNode(8);
  final nine = IntNode(9);
  seven.leftChild = one;
  one.leftChild = zero;
  one.rightChild = five;
  seven.rightChild = nine;
  nine.leftChild = eight;
  return seven;
}

StringNode createStringTree() {
  final zero = StringNode('zero');
  final one = StringNode('one');
  final five = StringNode('five');
  final seven = StringNode('seven');
  final eight = StringNode('eight');
  final nine = StringNode('nine');
  seven.leftChild = one;
  one.leftChild = zero;
  one.rightChild = five;
  seven.rightChild = nine;
  nine.leftChild = eight;
  return seven;
}

// generic class
class Node<T> {
  Node(this.value);

  T value;
  Node? leftChild;
  Node? rightChild;
}

Node<int> createIntTree1() {
  final zero = Node(0);
  final one = Node(1);
  final five = Node(5);
  final seven = Node(7);
  final eight = Node(8);
  final nine = Node(9);
  seven.leftChild = one;
  one.leftChild = zero;
  one.rightChild = five;
  seven.rightChild = nine;
  nine.leftChild = eight;
  return seven;
}

Node<String> createStringTree1() {
  final zero = Node('zero');
  final one = Node('one');
  final five = Node('five');
  final seven = Node('seven');
  final eight = Node('eight');
  final nine = Node('nine');
  seven.leftChild = one;
  one.leftChild = zero;
  one.rightChild = five;
  seven.rightChild = nine;
  nine.leftChild = eight;
  return seven;
}

Node<E>? createTree<E>(List<E> nodes, [int index = 0]) {
  if (index >= nodes.length) return null;

  final node = Node(nodes[index]);

  final leftChildIndex = 2 * index + 1;
  final rightChildIndex = 2 * index + 2;

  node.leftChild = createTree(nodes, leftChildIndex);
  node.rightChild = createTree(nodes, rightChildIndex);

  return node;
}

void runTrees() {
  final intTree = createIntTree();
  final stringTree = createStringTree();
  final intTree1 = createIntTree1();
  final stringTree1 = createStringTree1();
  final tree = createTree([7, 1, 9, 0, 5, 8]);
  print(intTree);
  print(stringTree);
  print(intTree1);
  print(stringTree1);
  print(tree?.value);
  print(tree?.leftChild?.value);
  print(tree?.rightChild?.value);
  print(tree?.leftChild?.leftChild?.value);
  print(tree?.leftChild?.rightChild?.value);
  print(tree?.rightChild?.leftChild?.value);
  print(tree?.rightChild?.rightChild?.value);
}
