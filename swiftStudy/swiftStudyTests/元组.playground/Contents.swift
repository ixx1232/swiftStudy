//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//什么是元组类型
////元组类型由 N个 任意类型的数据组成（N >= 0）
////组成元组类型的数据可以称为“元素”
//let position = (x : 10.5, y : 20)
//// position有2个元素，x、y是元素的名称
//
//let person = (name : "jack")
//// person只有name一个元素
//
//let data = ()
//// 空的元组




// 元素的访问
//var position = (x : 10.5, y : 20)
////用元素名称
//let value = position.x // 取值
//position.y = 50  // 设值
//
////用元素位置
//var value = position.0  // 相当于var value = postion.x
//position.1 = 50 // 相当于postion.y = 50
//
//注意
//如果用let来定义一个元组，那么就是常量，就无法修改它的元素
//let point = (x : 10, y : 20)
//point.x = 30
//第2行代码会报错

// 元组的输出
//可以输出整个元组来查看所有元素的值
var point = (x : 10.5, y : 20)
point.x = 30
point.1 = 50
print(point)
//输出结果是：(30.0, 50)

// 使用细节
//可以省略元素名称
//let position = (10, 20)
//let person = (20, "jack")
//
//可以明确指定元素的类型
//var person: (Int, String) = (23, "rose")
//person的第0个元素只能是Int类型、第1个元素只能是String类型
//
//注意
//在明确指定元素类型的情况下不能加上元素名称
//因此，下面的语句是错误的
//var person: (Int, String) = (age : 23, name : "rose")







// 使用细节
//可以用多个变量接收元组数据
//var (x , y) = (10, 20) // x是10，y是20
//var point = (x, y) // point由2个元素组成，分别是10和20
//
//可以将元素分别赋值给多个变量
//var point = (10, 20)
//var (x , y) = point
//// x是10，y是20
//
//可以使用下划线 _ 忽略某个元素的值，取出其他元素的值
//var person = (20, "jack")
//var (_, name) = person
//// name的内容是“jack”，person中的元素20被忽略