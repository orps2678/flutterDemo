import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


void main(){
  /// 4.2.1 Dart語言基礎知識
  dateAndTimeCategory();

  /// 4.2.2 符號!,?和??的用法
  String abc = 'going home';
  String? def;
  poLog("This str length is ${getLength("")}");
  poLog(getLength(def ?? 'default'));

  /// 4.2.3 final和const使用區別
  finalConst();

  /// 4.2.4 dynamic和var的區別
  dynamicAndVar();

}

/// 4.2.1 Dart語言基礎知識
void dateAndTimeCategory(){
  /// 日期時間類的用法
  var now = DateTime.now();
  poLog('現在是${now.year}年${now.month}月${now.day}日${now.hour}點${now.minute}分');

  var birthday = DateTime.parse("2021-09-15 01:18:01");
  Duration difference = now.difference(birthday);

  poLog('相差的天數為${difference.inDays}');

  var beijingTime = DateTime.utc(2022, DateTime.january, 9);
  poLog(beijingTime.weekday == DateTime.sunday);
  poLog("星期一：${DateTime.monday}");
  poLog("星期二：${DateTime.tuesday}");
  poLog("星期三：${DateTime.wednesday}");
  poLog("星期四：${DateTime.thursday}");
  poLog("星期五：${DateTime.friday}");
  poLog("星期六：${DateTime.saturday}");
  poLog("星期天：${DateTime.sunday}");

  /// 得到當前的時間
  TimeOfDay now2 = TimeOfDay.now();
  const TimeOfDay releaseTime = TimeOfDay(hour: 15, minute: 0);
  TimeOfDay roomBooked = TimeOfDay.fromDateTime(DateTime.parse("2018-10-20 16:30:04Z"));
  poLog(releaseTime);
  poLog(roomBooked);
}

/// 4.2.2 符號!, ?和??的用法
/// ?代表變數可為空
int getLength(String? str){
  if(str == null){
    return 0;
  }

  return str.length;
}

/// 4.2.3 final和const使用區別
void finalConst (){
  const address = 'tsunami wu';

  /// const now = DateTime.now();compile error
  /// 每次調用時，會取得當前的時間，每次都會變動，所以在編譯時期無法確定他的值是不變的，並且隨時都在改變，所以不能放在const
  final now = DateTime.now();
  /// final的值可以在運行時確定，但在被初始化後不能再更改，這使得final比const更家靈活 => 因為他允許你使用在編譯時無法確定的值
  /// now = DateTime.parse("2023-08-06");
  /// 這樣會導致Can't assign to the final variable 'now'.因final已經初始化 所以不能在將now的值做改變
}

/// 4.2.4 dynamic 和var的區別
void dynamicAndVar(){
  var a = 1;
  a = 2;
  /// a = '哈哈'; var 被賦予變數類型後，變數類型無法在改變
  /// a 已經被賦予為整數 => 不可再被改變成String

  dynamic b = 1;
  b = 2;
  b = 2.443;
  b = "嘿嘿";
  b = [1, "啊哈", 3.14];
  /// dynamic 可以在被賦予值後，再次地去改變型態
}



void poLog(dynamic logText){
  if (kDebugMode) {
    print(logText);
  }
}