import 'dart:io';

void main() {
  List<String> tasks = [];
  int choice = 0;

  while (choice != 4) {
    print("\n==== TO DO LIST MENU ====");
    print("1. Add Task");
    print("2. View Tasks");
    print("3. Remove Task");
    print("4. Exit");
    stdout.write("Enter your choice: ");
    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write("Enter task: ");
        String task = stdin.readLineSync()!;
        tasks.add(task);
        print("Task Added!");
        break;

      case 2:
        if (tasks.isEmpty) {
          print("No tasks available.");
        } else {
          for (int i = 0; i < tasks.length; i++) {
            print("${i + 1}. ${tasks[i]}");
          }
        }
        break;

      case 3:
        if (tasks.isEmpty) {
          print("No tasks to remove.");
        } else {
          stdout.write("Enter task number to remove: ");
          int num = int.parse(stdin.readLineSync()!);
          if (num > 0 && num <= tasks.length) {
            tasks.removeAt(num - 1);
            print("Task Removed!");
          } else {
            print("Invalid task number.");
          }
        }
        break;

      case 4:
        print("Program Ended.");
        break;

      default:
        print("Invalid Choice!");
    }
  }
}