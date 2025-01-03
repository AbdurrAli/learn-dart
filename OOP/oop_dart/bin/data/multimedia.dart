abstract class Multimedia {
  // Rest of class
}

mixin Playable on Multimedia {
  String? name;

  void play() {
    print("Play $name");
  }
}

mixin Stoppable on Multimedia {
  String? name;

  void stop() {
    print("Stop $name");
  }
}

class Video extends Multimedia with Playable, Stoppable {
  // Rest of class
}

class Audio extends Multimedia with Playable, Stoppable {
  // Rest of class
}
