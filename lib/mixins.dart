// mixins for animal behaviors achieves code reuse
mixin EggLayer {
  void layEggs() {
    print('Plop plop');
  }
}

mixin Flyer {
  void fly() {
    print('Swoosh swoosh');
  }
}

// This mixin can only be applied to enums. The 'on Enum' constraint ensures that.
// The on Enum constraint allows access to enum-specific properties like 'name' and 'runtimeType'.
mixin Describer on Enum {
  void describe() {
    print('This $runtimeType is a $name');
  }
}
