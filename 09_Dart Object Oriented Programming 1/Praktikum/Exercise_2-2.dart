class Course {
  String? title;
  String? description;

  Course({this.title, this.description});
}

class Student {
  String? name;
  String? classRoom;
  List<Course> courses = [];

  void assignCourse(Course course) {
    courses.add(course);
  }

  void deleteCourse(Course course) {
    courses.remove(course);
  }

  void showCourse() {
    if (courses.isEmpty) {
      print("> Tidak ada course yang diambil...");
    } else {
      print("> Course yang sudah diambil: ");
      for (var course in courses) {
        print("> ${course.title}: ${course.description}");
      }
    }
  }
}

void main() {
  var course1 = Course(title: "Dart", description: "Belajar Bahasa Pemrograman Dart");
  var course2 = Course(title: "Java", description: "Belajar Bahasa Pemrograman Java");
  var course3 = Course(title: "Python", description: "Belajar Bahasa Pemrograman Python");

  var student1 = Student();
  student1.name = "Andi";
  student1.classRoom = "A";
  student1.assignCourse(course1);
  student1.assignCourse(course2);
  student1.showCourse();
  student1.deleteCourse(course1);

  var student2 = Student();
  student2.name = "Adinda";
  student2.classRoom = "B";
  student2.assignCourse(course3);
  student2.showCourse();
}