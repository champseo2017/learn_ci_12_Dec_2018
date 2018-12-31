<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Learn javascript</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
    <h1>Javascript</h1>
<script>
// var obj = {
//     a: 1,
//     myFunction: function (){

//         console.log("call myfunction")

//     },
// };
// obj.a = 100;
// console.log(obj.a);
// console.log(typeof obj.myFunction);
// obj.myFunction();

// var student = {
//     "First name": "Somchai",
//     "Last name": "Jaidee",
//     "Who are you": function(){
//         console.log("I' m a student");
//     },
//     nickname: "Tom"
// };
// var lastName = "Last name"; //เพิ่ม key ของ obj ไว้ในตัวแปรแล้วเรียกใช้งาน
// console.log(student[lastName]);

// student["Who are you"]();
// console.log(student.nickname);
// console.log(student["nickname"]);
// console.log(student["First name"]);

//เพิ่มพร็อพเพอร์ตี้เข้าไปทีหลัง
// var obj = {};
// obj.a = 1; // เพิ่มพร็อพเพอร์ตี้ที่เป็ฯตัวแปร a
// obj[1] = 100; // เพิ่มพร็อพเพอร์ตี้ที่มีคีย์เป็นตัวเลข 1
// obj["property name"] = 200; // เพิ่มพร็อพเพอร์ตี้ที่มีคีย์เป็นสตริง "property name"
// obj.myFunction = function(){ // เพิ่มพร็อมเพอร์ตี้ที่เป็นเมธอด
//     console.log("hello function");
// }
// console.log(obj);
// console.log(obj.myFunction());
//ประกาศ key เป็นออบเจ็กต์ว่างจะทำไม่ได้โดยตรง เพราะจะเกิด error แต่ถ้าใช้ key วงเล็บเหลียมเพิ่ม key ออบเจ็กต์เข้าไปทีหลังสามารถทำได้
var obj = {};
var key = {}; // เอา key เป็นออบเจ็กต์ว่างจะทำไม่ได้โดยตรงต้องประกาศวงเล็บเหลียม
obj[key] = 100; // key วงเล็บเหลียมเป็น key ออบเจ็กต์ว่าง
console.log(obj[key]);
</script>
</body>
</html>