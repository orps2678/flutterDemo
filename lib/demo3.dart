import 'package:flutter/foundation.dart';

void main() {
  /// 物件
  poLog("------class------");
  var video1 = Video('Dart Tutorial', 'Happy coding', '2019/9/14',
      'https://123', 'https://456');
  poLog(video1.title); //Output： Dart Tutorial

  var video2 = Video.onlyUrl("https://123.456");
  poLog(video2.url); //Output： https://123.456

  var video3 = Video.onlyTitle("Only title");
  poLog(video3.title); //Output： Only title

  /// 繼承
  poLog("------extend------");
  var john = Boy("John", 25);
  poLog(john.introduce()); // Output: I'm John. Nice to meet you.

  /// Mixin
  poLog("------Mixin------");
  var coder = Flutter('Tracy', 23);
  poLog(coder.introduce());

  /// extends People
  poLog(coder.android());

  /// with  Android
  poLog(coder.ios());

  /// with  IOS
}

/// *** 物件 ***
class Video {
  /// *** Dart 的 Null 安全（Null Safety） ***
  /// 非空變數（Non-nullable Variables）：Dart 中的變數默認是可為空的，即可以賦值為 null。但在 Null 安全中，你可以使用 ? 來表示一個變數是可為空的，並在變數名稱後面加上 ? 來表示這個變數是可為空的，例如 String? name;。
  /// 非空斷言（Non-null Assertion）：如果你確定一個可為空的變數在某處不為空，你可以使用非空斷言 ! 來告訴 Dart 這一點。這樣一來，Dart 會在運行時忽略變數是否為空的檢查，但是如果該變數實際上為空，就會產生空指針異常。
  /// Late 修飾詞：Dart 中的 late 修飾詞用於表示你會在使用變數之前將其初始化。這樣可以在某些情況下避免對變數進行初始賦值。

  /// *** Dart 訪問權限 ***
  /// Public, Private：在成員名稱或變數名稱前加上下劃線 _，就表示這個成員或變數是私有的。私有成員只能在同一個庫（library）中訪問，無法在庫的外部訪問。
  late String title; //標題
  late String _description; //影片資訊
  late String _publishTime; //上傳時間
  late String _thumbnail; //縮圖網址
  late String _url; //影片網址

  Video(this.title, this._description, this._publishTime, this._thumbnail,
      this._url);

  Video.onlyUrl(this._url);

  Video.onlyTitle(String title) {
    title = title;
  }

  String get url => _url;
}

/// 印出console
void poLog(dynamic message) {
  if (kDebugMode) {
    print(message);
  }
}

/// class繼承
class People {
  String name;
  int age;

  People(this.name, this.age);

  String introduce() => "I'm $name. Nice to meet you.";
}

/// 利用super 呼叫父類別的有傳參數建構式
class Boy extends People {
  Boy(String name, int age) : super(name, age);
}

/// Mixin
mixin Android {
  String android() => "I'm android developer";
}

mixin IOS {
  String ios() => "I'm ios developer";
}

class Flutter extends People with Android, IOS {
  Flutter(String name, int age) : super(name, age);
}
