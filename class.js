var Student = /** @class */ (function () {
    function Student(name, age) {
        this.name = name;
        this.age = age;
    }
    Student.prototype.display = function () {
        console.log("Name: " + this.name);
        console.log("Age: " + this.age);
    };
    return Student;
}());
var s1 = new Student("Darshana", 21);
s1.display();
