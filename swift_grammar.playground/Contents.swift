//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// 변수 연산 = {+, -, *, /}
// 변수 종류 = {Int, Double, String, Dictionary}
//Int
var a = 3
var b = 2
a
b
a+b
a-b
a*b
a/b

/*
 var : variable, 변수, 해당 변수가 가지는 값이 변할 수 있음
 let : constant, 상수, 해당 변수가 가지는 값이 변할 수 없음
 
 struct : 구조체
 class : 클래스
 
 type inference 타입 추론.
 
 _ --> python name convention ex) a_str
 camel case ex ) aStrPlus
*/
let c = 4
c
a = -1//
a

//Double
var a_double:Double = 3.5
var b_double:Double = 2.3
a_double
b_double
a_double + b_double
a_double - b_double
a_double * b_double
a_double / b_double

//String
var aStr:String = "My name is "
var bStr:String = "kyungmoon"
aStr
bStr
aStr+bStr // concatenation
"my name is \(bStr)" // string interpolation

//Dictionary : 인덱싱을 숫자가 아닌 key-value 형식으로 하는 데이터 타입
var aDict = ["NAME":"lkm"]
aDict
aDict["NAME"]
//aDict.keys

// 자료구조
// 배열,list
var aList:[Int] = [1,2,3]
aList
aList.append(a)
aList.remove(at: 3)
aList
aList[1]
aList.count

// 반복문
for member in aList{
    //print(member)
}
for i in 0 ..< 300{
    //print(i)
}

var a_true = true
var a_while = 0

while( a_true ){
    //print(a_while)
    a_while += 1 // a_whie = a_while + 1
    if(a_while > aList.count){
        a_true = false
    }
}

// 조건문 : if else
/*
 a = 3 : assignment --> 리턴값 : a
 a == 3 : comparison --> 리턴값 : Bool = true / false
 */
if (aList.count == 4){
    print("aList.count is 2")
}else{
    print("aList.count is not 4")
}

var parent = 2
var child = 1
while (parent < 10){
    child = 1
    while(child < 10){
        //print(parent*child)
        child = child + 1
    }
    parent = parent + 1
}

/*
for parent in 2 ..<10{
    for child in 1 ..<10{
        print(self.parent*child)
    }
}
*/

// 함수 : parameter, return값
func test_print(){
    print("Hi, I'm test_print")
}
func sum(_ a:Int, _ b:Int) ->Int{
    return a+b
}
// "1+2 = \(sum(a:1,b:2))"
// 문제 : 파라미터로 아무 숫자를 받아서 해당 숫자를 1~9까지 곱해서 출력하라
func multiple( parent:Int){
    var child = 1
    while ( child < 10){
        print( parent  * child)
        child = child + 1
    }
}

// class
class Car{
    var type = "" // "승용","승합","트럭","스포츠카","세단"
    var company = "" // "현대"...
    var eff = 0
    
    init(_type:String, _company:String, _eff:Int){
        self.type = _type
        self.company = _company
        self.eff = _eff
    }
    
    func show_milege(m:Int){
        print("\(m)L로 \(m*eff) km를 달릴 수 있다")
    }
}

var a_car:Car = Car(_type:"승용",_company:"현대", _eff:100)
a_car.show_milege(m: 10)
a_car.company

//inheritance
/*
 self.type = __type
 self.company = __company
 self.eff = __eff
 */
class High_Rank_Car:Car{
    var password = ""
    
    init(__type: String, __company: String, __eff: Int, __password:String) {
        //super.init()
        super.init(_type: __type, _company: __company, _eff: __eff)
        self.password = __password
    }
    
    func start_car(_password:String){
        if self.password == _password{
            print("시동이 걸렸습니다")
        }else{
            print("비밀번호가 일치하지 않습니다")
        }
    }
}

var b_car:High_Rank_Car = High_Rank_Car(__type:"승용",__company:"페라리", __eff:2000, __password:"1234")
b_car.company
b_car.show_milege(m: 10)
b_car.start_car(_password: "1234")



