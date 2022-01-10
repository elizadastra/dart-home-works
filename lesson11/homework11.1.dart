class Student {
  String firstName = '';
  String lastName = ' ';
  String group = ' ';
  double averageMark = 0;
  int sumScholarship = 0;

  Student(String firstName, lastName, group, averageMark) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.group = group;
    this.averageMark = averageMark;
  }

  void study() {
    print('$firstName study very hard');
  }

  int getScholarship() {
    if (averageMark == 5) {
      sumScholarship = 20000;
    }

    return sumScholarship;
  }
}

class Aspirant extends Student {
  String project = '';

  Aspirant(String firstName, lastName, group, averageMark)
      : super(firstName, lastName, group, averageMark);

  int getScholarship() {
    if (averageMark == 5) {
      sumScholarship = 40000;
    } else {
      sumScholarship = 18000;
    }

    return sumScholarship;
  }
}

void main(List<String> args) {
  Student student = Student('Asan', 'Tokaev', " 2 group", 5.0);
  Aspirant aspirant = Aspirant('Uson', 'Atambaev', " 3 group", 5.0);
  print(student.getScholarship());
  print(aspirant.getScholarship());
}
