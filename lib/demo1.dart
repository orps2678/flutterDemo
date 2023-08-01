import 'package:flutter/foundation.dart';

void main(){
  /// 基本型別
  poInt();
  poString();
  poDouble();
  poDynamic();

  /// List
  poDynamicList();

  /// Map
  poMap();

  /// function 應用 回傳 user's birthday is month/day
  /// 請參考有三種寫法 前兩種寫法回傳結果相同
  poLog(birthdayLog('John', 01, 09));
  poLog(birthdayLog2('Peter', 02, 09));
  poLog(birthdayLog3(month:03, day:09));

  /// Anonymous Function 匿名函式
  interElement([1, 2, 3, 4, 5]);
}

/// 印出輸入的內容
void poLog(dynamic text){
  if (kDebugMode) {
    print(text);
  }
}

/// 印出int
///
/// int為基本型別
void poInt(){
  var a = 1;  //int 整數
  if(a is int){
    poLog("--------int--------");
    poLog("a is int!");
    poLog("$a is int!");
  }
}

/// 印出String
///
/// String為基本型別
void poString(){
  var b = "2";  //String 字串
  if(b is String){
    poLog("------String------");
    poLog("b is String!");
    poLog("$b is String!");
  }
}

/// 印出double
///
/// double為基本型別
void poDouble(){
  var c = 1.1;  //double 浮點數
  if(c is double){
    poLog("------double------");
    poLog("c is double!");
    poLog("$c is double!");
  }
}

/// 印出dynamic
///
/// dynamic是所有物件的基礎類型
void poDynamic(){
  dynamic dText = 1;
  dText = 2;
  dText = 'xx1';//因為是dynamic可以重新賦值不會報錯
  poLog("------print dynamic------");
  poLog(dText);
}

/// 印出dynamic list
void poDynamicList(){
  List<dynamic> dynamicList = const[1, '123', true];
  List<dynamic> dynamicList2 = [1, '123', true];
  poLog("---print List<dynamic>---");
  poLog("dynamicList:$dynamicList");
  poLog("dynamicList2:$dynamicList2");
  dynamicList2.add(456);
  //poLog(dynamicList); error因為加了const後List不可新增修改刪除
  poLog("dynamicList2 add:$dynamicList2");
}

/// 印出Map
///
/// Map是使用key-value的方式來儲存的資料型態，Map是使用大括號{}，以Key:Value的方式定義。
void poMap(){
  var map = {
    'key1':'value1',
    'key2':'value2',
    'key3':'value3'
  };

  poLog("---print map---");
  poLog("map[key1]:${map['key1']}"); /// value1
  poLog("map[test]:${map['test']}"); /// null

  map['key4'] = 'value4';

  poLog("map Length:${map.length}");
  poLog("check contains key1:${map.containsKey('key1')}");
  poLog("check contains value2:${map.containsKey('value2')}");
  poLog("map entries:${map.entries}");
  poLog("map value:${map.values}");
}

/// function應用
///
/// 寫法一：
String birthdayLog(String name, int month, int day){
  poLog("--- function ---");
  return "$name's birthday is $month/$day";
}

/// 寫法二：
String birthdayLog2(String name, int month, int day) => "$name's birthday is $month/$day";

/// 寫法三：
String birthdayLog3({String name='x3', required int month, required int day}) => "$name's birthday is $month/$day";

/// 匿名函式(Anonymous Function) interElement
void interElement(List elements){
  poLog("--- Anonymous Function ---");

  /// elements.forEach((element) => poLog("Number is $element")); 原有寫法也是可以的，但Android studio建議換成另一種寫法
  for (var element in elements) {
    poLog("Number is $element");
  }
}
