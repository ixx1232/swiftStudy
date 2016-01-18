//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// OC 中的写法仍然可以使用, 不过有两个细节
// 1.没有括号
// 2. 没有语法提示
for var i = 0; i < 10; i++ {
    
    print(i)
}

// Swift 中的标准写法
for i in 1..<10 {
    print(i)
}

// 从 0 到 10, 一共 11
for i in 0...10{
    
    print(i)
}

// 如果循环的时候, 对索引数字不需要, 可以使用"_" 忽略
for _ in 0...10 {
    
    print("haha")
}


/**
swift中,不需要在每一个case后面增加break,执行完case对应的代码后默认会自动退出switch语句
swift中,每一个case后面必须有可以执行的语句
*/
let grade = "B"
switch grade {
case "A":
    print("优秀等级")
case "B":
    print("良好等级")
case "C":
    print("中等等级")
default:
    print("未知等级")
}

// swift中,每一个case后面可以填写多个匹配条件,条件之间用逗号,隔开
let score = 95
switch score/10 {
case 10, 9:
    print("优秀")
case 8,7,6:
    print("及格")
default:
    print("不及格")
}

//swift中,case后面可以填写一个范围作为匹配条件,
//switch包保证处理所有可能的情况,不然编译器直接报错
// 因此,这里的default一定要加,不然就出现了一些处理不到的情况
let score1 = 95
switch score1 {
case 90...100:
    print("优秀")
case 60...89:
    print("及格")
default:
    print("不及格")
}

// 在case匹配的同时,可以将switch中的值绑定给一个特定的常量或者变量,以便在case后面的语句中使用
let point = (10,0)
switch point {
case (let x, 0):
    print("这个点在x轴上,x值是\(x)")
case (0, let y):
    print("这个点在y轴上,y值是\(y)")
case let (x, y):
    print("这个点的x值是\(x),y值是\(y)")
}

// switch语句可以使用where来增加判断的条件
var point1 = (10, -10)
switch point1 {
case let (x, y) where x == y :
    print("这个点在绿线上")
case let (x, y) where x == -y :
    print("这个点在紫线上")
default :
    print("这个点不在这两条线上")
}

// fallthrough的作用
// 执行完当前case后,会接着执行fallthrough后面的case或者default语句
let num = 20
var str1 = "\(num)是个"
switch num {
case 0...50 :
    str1 += "0~50之间的"
    fallthrough
default:
    str1 += "整数"
}
print(str1)

// 标签: 使用标签的其中1个作用:可以用于明确指定要退出哪个循环
// 做 2 组俯卧撑,没组 3 个, 做完一组就休息一会
group :
    for _ in 1...2 {
        for item in 1...3 {
            print("做 1 个俯卧撑")
            if item == 2 {
                break group
            }
        }
        print("休息一会")
}