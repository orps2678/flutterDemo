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


void poLog(dynamic logText){
  if (kDebugMode) {
    print(logText);
  }
}