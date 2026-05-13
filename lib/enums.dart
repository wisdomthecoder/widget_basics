main() {
  var vlc = Process(name: "vlc1212");
  vlc.processState = .running;
  vlc.printProcessState();

}

class Process {
  String name;
  ProcessState processState;

  Process({required this.name, this.processState = ProcessState.ready});

  void printProcessState() {

    switch(processState){
      case .terminated:
        print("This process is terminated");
        break;
      case .ready:
        print("This process is ready");
      case .running:
        print("This process is running");
      case .waiting:
        print("This process is waiting");

    }



    //
    if (processState == ProcessState.running) {
      print("This process is running");
    } else if (processState == ProcessState.ready) {
      print("This process is ready to run");
    } else if (processState == ProcessState.terminated) {
      print("This process is terminated");
    } else if (processState == ProcessState.ready) {
      print("This process is waiting");
    }
  }
}

enum ProcessState { ready, running, terminated, waiting }
