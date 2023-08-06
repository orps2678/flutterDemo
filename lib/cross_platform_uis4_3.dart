import 'package:flutter/foundation.dart';

void main() {
  /// 4.3.2 類別的執行
  var user1 = User('Jack', DateTime(2001, 9, 5));
  user1.output();

  var user2 = User.change('Tom');
  user2.output();

  /// 4.3.3 類別的繼承
  var client1 = Client("Cool", DateTime(1995, 4, 11), 1);
  poLog(client1);

  /// 4.3.4 默認參數、可選參數、位子參數
  processData();

  /// 4.3.5 混入Mixins
  poLog("--- 4.3.5 混入Mixins ---");
  var craft = Bus("Jack", DateTime.now());
  craft.describe();

  /// 4.3.6 ..的用法
  poLog("--- 4.3.6 ..的用法 ---");
  cascadeNotation();

  /// 4.3.7 異常Exception
  simpleExample();
}

/// 4.3.1 類別的定義
class User {
  String name;

  /// 一變數name
  DateTime? birthday;

  /// 一變數birthday 允許為空值

  int? get birthYear => birthday?.year;

  /// 相當等於getter方法

  ///建構式
  User(this.name, this.birthday);

  User.change(String name) : this(name, null);

  /// 一般類別方法
  void output() {
    poLog('名稱 : $name');
    var birthday = this.birthday;
    if (birthday != null) {
      int years = DateTime.now().difference(birthday).inDays ~/ 365;
      poLog('出生年月 : $birthYear($years年以前)');
    }

    poLog('出生年份未知');
  }
}

/// 4.3.3 類別的繼承
class Client extends User {
  double amount;

  Client(String name, DateTime birthday, this.amount) : super(name, birthday);
}

/// 4.3.4 默認參數、可選參數、位子參數
void processData() {
  /// 默認參數name, 命名參數age有默認值10, sex必須輸入變量值
  String method1(String name, {int age = 10, required sex}) {
    return "姓名: $name 年齡: $age 性別: $sex";
  }

  ///可選位子age參數, 不輸入時為null, 問號表示age可以為空
  String method2(String name, [int? age]) {
    return "姓名: $name 年齡: ${age ?? '未知'}";
  }

  poLog("--- 4.3.4 默認參數, 可選參數, 位子參數 ---");
  poLog(method1("小明", sex: "男"));
  poLog(method1("小張", age: 36, sex: "女"));
  poLog(method2("小華"));
  poLog(method2("小李", 19));
  poLog(method1("John", age: 20, sex: "男"));
}

/// 4.3.5 混入Mixins
class Car {
  String? name;
  DateTime? startDate;

  Car(this.name, this.startDate);
}

mixin Clerk {
  int num = 1;

  void crew() {
    poLog('乘客數量: $num');
  }
}

class Bus extends Car with Clerk {
  Bus(String name, DateTime startDate) : super(name, startDate);

  void describe() {
    super.crew();
    poLog('名稱: $name 出版日期: $startDate');
  }
}

/// 4.3.6 ..的用法
/// Flutter的".."運算符被稱為"連續調用"（Cascade Notation）。它允許你在同一個對象上連續進行多個操作。這有助於簡化代碼並提高可讀性。
class Person {
  method1() {
    poLog("method1");
  }

  method2() {
    poLog("method2");
  }

  method3() {
    poLog("method3");
  }
}

void cascadeNotation() {
  var per = Person();
  per
    ..method1()
    ..method2()
    ..method3();
}

/// 4.3.7 異常Exception
void simpleExample() {
  poLog("--- 4.3.7 異常Exception ---");
  try {
    // 嘗試執行一個可能拋出異常的操作
    int result = 5 ~/ 0; // 故意進行一個除以0的操作
    poLog('Result: $result'); // 這行代碼將不會被執行
  } catch (e) {
    // 捕獲並處理異常
    poLog('An error occurred: $e');
  } finally {
    // 這個塊將始終被執行，不論是否發生異常
    poLog('Finally block executed');
  }
}

void poLog(dynamic logText) {
  if (kDebugMode) {
    print(logText);
  }
}
