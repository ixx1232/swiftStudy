//: Playground - noun: a place where people can play

import UIKit

// 函数的定义
// 函数的定义格式
/**
func 函数名(形参列表) -> 返回值类型 {
// 函数体...
}

*/

func sum(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

// 没有返回值的函数
// 如果函数没有返回值,有3中写法
/**
1>    func 函数名(形参列表) -> Void {
// 函数体...
}
2>    func 函数名(形参列表) -> () {
// 函数体...
}

3>    func 函数名(形参列表){
// 函数体...
}
*/

// 没有形参的函数
// 如果函数没有形参,函数名后面的小括号也不能省略
/**
func 函数名() -> Int {
// 函数体
}
*/

// 一个函数也可以返回元组数据
func find(id: Int) -> (name: String, age: Int){
    if id > 0 {
        return ("jack", 20)
    }else {
        return ("nobody",0)
    }
}

var people = find(2)
print("name=\(people.name), age=\(people.age)")

/**
 // 外部参数名:一般情况下,通过形式参数的名字,就能推断出这个参数的含义和作用
 func addStudent(name: String, age: Int, no: Int){
 print("添加学生:name=\(name), age=\(age), no=\(no)")
 }
 
 addStudent("jack", 20, 19)
 
 在函数内部一看参数名就知道这3个参数的作用
 但是,形式参数是用在函数内部的,当调用函数时就看不见形参的名字,有可能导致以后会不太明白每个参数的含义
 一眼望去,能猜出第1个参数"jack"是指姓名,后面的20/19分别代表什么含义?
 
 为乐解决上述问题,swift提供了外部参数名的语法
 外部参数名可以在调用时提醒每个参数的含义
 
 外部参数名的定义格式
 func 函数名(外部参数名 形式参数名: 形式参数类型) -> 返回值类型 {
 
 // 函数体....
 
 }
 外部参数名卸载形式参数名的前面,与形式参数名之间用空格隔开
 */
 
 // 外部参数名的使用
func sum(number1 num1: Int, number2 num2: Int) -> Int {
    return num1 + num2
}

// 函数和方法的外部参数名一致
sum(number1: 10, number2: 20)

// 注意:一旦定义了外部参数名,在调用函数时就必须加上外部参数名,使用 # 能简化外部参数名的定义
// 使用  _   可以忽略外部参数名
// 可以在定义函数时,给形参指定一个默认值,调用函数时,就可以不用给这个形参传值

/**
默认情况下,函数的参数都是常量参数,不能在函数内部修改
func test(num: Int) {
num = 10
}
func test(num: Int)参数相当于func test(let num: Int)
num = 10 会报错

在有些情况下,可能需要在函数内部修改参数的值,这时需要定义变量参数
在参数名前面加个var即可
func test(var num : Int) {
num = 10
}
*/

// 编写函数在某个字符串的尾部拼接N个其他字符串
func append(var string: String, suffix: String, count: Int) -> String {
    for _ in 0..<count {
        string += suffix
    }
    return string
}

append("jack", suffix: "+", count: 4)

/**
 什么是输入输出参数
 1> 在C语言中,利用指针可以在函数内部修改外部变量的值
 2> 在swift中,利用输入输出参数,也可以在函数内部修改外部变量的值
 3> 输入输出参数,顾名思义,能输入一个值进来,也可以输出一个值到外部
 
 输入输出参数的定义
 1> 在参数名前面加个inout关键字即可
 func swap(inout num1: Int, inout num2: Int) {
 
 }
 */
 
 
 /**
 输入输出参数的使用注意
 1> 传递实参时,必须在实参的前面加上  &
 2> 不能传入常量或者字面量(比如10)作为参数值(因为他们都不可改)
 3> 输入输出参数不能有默认值
 4> 输入输出参数不能是可变参数
 5> 输入输出餐宿不能在使用let\var修饰(inout和let/var不恩能够共存)
 
 6>输出输出参数的价值之一
 可以实现函数的多返回值(其实让函数返回元祖类型,也能实现返回多个值)
 */
 // 写一个函数交换外部2个变量的值
func swap(inout num1: Int, inout num2: Int) {
    let tempNum1 = num1
    num1 = num2
    num2 = tempNum1
}
var a = 10
var b = 20
// 传入的参数前面必须加上  &
swap(&a, &b)

/**
 函数类型也是数据类型的一种,它由形参类型和返回值类型组成  格式是:(形参类型列表) -> 返回值类型
 */

func su(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

// su函数的函数类型是(Int, Int) -> Int

func printLine(){
    print("------")
}
// printLine函数的函数类型有4种表示方法
// void -> void
// () -> ()
// void -> ()
// () -> void

// 利用函数类型来定义变量,将来可以存储这种类型的函数
func s(num1: Int, num2: Int) -> Int {
    return num1 + num2
}
var fn: (Int, Int) -> Int = s // var fn = s
fn(10, 20)
// 由于swift有类型推断机制,因此,也可以这么写

// fn以后所存储函数的类型就必须是(Int, Int) -> Int

// 跟其他数据类型一样,函数也恩能够当函数的参数
func printResult(fn:(Int, Int) ->Int,num1: Int,num2: Int) {
    print("运算结果是: %d",fn(num1,num2))
    
}

// fn参数接收一个函数,这个函数必须返回Int,有2个Int类型的参数
func s1(num1: Int, num2: Int) -> Int {
    return num2 + num1
}
func minus(num1: Int, num2: Int) -> Int {
    return num1 - num2
}

printResult(s1, num1: 20, num2: 10)
printResult(minus, num1: 20, num2: 10)

// 函数作为返回值
func goToWork() {
    print("去上班")
}

func playFootball() {
    print("踢足球")
}

func howToDo(day: Int) ->  ()->(){
    if day < 6{
        return goToWork
    }else {
        return playFootball
    }
}

var f = howToDo(7)
f()

// 函数重载
// 函数名相同,函数类型不同

// 嵌套函数