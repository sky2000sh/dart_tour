
// void sayHello(String potato) {
//   print("Hello $potato, Nice to meet you!");
// }

// String sayHello(String potato) {
//   return "Hello $potato, Nice to meet you!";
// }
// => 아래와 같음 :
// String sayHello(String potato) => "Hello $potato, Nice to meet you!";  // [fat arrow syntax] : returning a String element right away

// String sayHello({String name = 'anon', int age = 99, String country = 'Wakanda'}) {
//   return "Hello $name, You are $age and you come from $country";
// }

// String sayHello({
//   required String name,
//   required int age,
//   required String country,
//   }) {
//   return "Hello $name, You are $age and you come from $country";
// }

// String sayHelloOptional(
//    String name,
//    int age,
//    [String? country = 'cuba']
//    ) => "Hello $name, You are $age and you come from $country";

// String capitalizeName(String name) => name.toUpperCase();
// String capitalizeName(String? name) {
//   if(name != null) {
//     return name.toUpperCase();
//   }
//   return 'ANON';
// }
// 삼항연산자
// String capitalizeName(String? name) => name != null ? name.toUpperCase() : 'ANON';

// 좌항이 null인 경우, 우항을 return 할 것. / 좌항이 null이 아닌 경우, 그대로 좌항을 return 할 것
//String capitalizeName(String? name) => name?.toUpperCase() ?? 'ANON';


// typedef ListOfInts = List<int>;
// // List<int> reverseListOfNumbers(List<int> list) {
// //   var reversed = list.reversed;
// //   return reversed.toList();
// // }
// ListOfInts reverseListOfNumbers(ListOfInts list) {
//   var reversed = list.reversed;
//   return reversed.toList();
// }

// Enums
//enum Teamss {red, blue}

// Class 241230
// class Player {
//   // class 에서는, 타입을 반드시 명시해줘야한다.
//   // String name = 'sihyeon';
//   //final String name = 'sihyeon';
//   //int xp = 1500;
//   // final String name;
//   String name;
//   int xp;
//   String team;
//   late int age;
//   //Teamss team123;

//   // Player(String name, int xp) {
//   //   this.name = name;
//   //   this.xp = xp;
//   // }

//   Player({
//     // Named Constructor Parameter
//     required this.name, required this.xp, required this.team, required this.age
//     });

//   Player.createBluePlayer({required String name, required int age}) :
//     this.age = age,
//     this.name = name,
//     this.team = 'blue',
//     this.xp = 0;

//   Player.createRedPlayer(String name, int age) :
//     this.age = age,
//     this.name = name,
//     this.team = 'red',
//     this.xp = 0;


//   Player.fromJson(Map<String, dynamic> playerJson) :
//     name = playerJson['name'],
//     xp = playerJson['xp'],
//     team = playerJson['team'];

//   void sayHello() {
//     print("Hi, my name is $name");
//   }
    
// }

// Abastract Class 241230
// abstract class Human {
//   void walk();
// }

// class Player extends Human {
//   void walk() {
//     print("Hi, I am now walking");
//   }
// }


class Human {
  final String name;
  Human({required this.name});
  void sayHello() {
    print("Hi, my name is $name");
  }
}

class Strong {
  final double strenghtLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print("runnnnn!");
  }
}

class Tall {
  final double height = 1.99;
}

enum Team {blue, red}

// class Player extends Human {
//   final Team team;

//   Player({
//     required this.team,
//     required String name,
//   }) : super(name : name);

//   @override
//   void sayHello() {
//     super.sayHello();
//     print('and I play for ${team}');
//   }
// }

// Mixins
// class Player with Strong, QuickRunner, Tall {
//   final Team team;
// }

// class Horse with Strong, QuickRunner {}


void main() {



  //var player = Player(team: Team.red, name : 'sihyeon');
  

  // print('Hello World');
  // var name = 'sihyeon';
  // String  name = 'sihyeon';
  //String? name = 'sihyeon';
  //name = null;
  //name?.isNotEmpty;
  
  // dynamic type : 변수에 어떤 값이 올지 모른다는 타입형
  // dynamic nameseses;
  // nameseses = '122';
  // nameseses = 122;
  // nameseses = true;

  // final : 값을 재할당하지 못하는 변수를 만들어 줌. => 이 후로는 해당 변수에 값을 다시 할당해주질 못함.
  // final name = 'siheyon';
  // final String names = 'siheyon';
  // late : final이나 var, String 등 앞에 붙여줄 수 있는 수식어
  // late final String namese;  // 1) 데이터 없이 변수를 만들어주소
  // late final var nameses;
  // do something, go to API
  // namese = 'sihyeon';  // 2) 그 후, API에서 데이터를 받아 변수에 "나중에(later) 넣어주는 형식
  
  // const name2 = 'sihyeon'; // const : compile-time constant : 이건 절대 바뀌지 않을거고, 컴파일 될때 그 값을 알고있을 것임. => const는 컴파일 시 알고있는 값에 사용하는 용도

  // List_241226
  //var numbers = [1, 2, 3, 4];
  //List<int> numbers = [1, 2, 3, 4];
  // numbers.add('lalala'); // x 이렇게 타입으로는 안됨.
  //numbers.add(13); // o 이렇게는 됨

  // var giveMeFive = true;
  // var numbersTest = [1, 2, 3, 4, 
  //   if(giveMeFive) 5,
  // ];
  // print(numbersTest);


  // String Interpolation_241227
  // $name // 변수값을 담기 위한 방법
  // ${age + 2}  // for calculation ; 어떤 계산을 거쳐서 그 결과 값을 구하고 싶은 경우.
  // var name = 'sihyeon';
  // var age = 10;
  // var greeting = 'Hello everyone, my name is $name, and I am ${age + 2} years old! Nice to meet you!';
  // print(greeting);

  // // Collection For
  // var oldFriends = ['sihyeon', 'Lynn'];
  // var newFriends = [
  //     'Lewis',
  //     'Ralph',
  //     'Darren',
  //     for(var friend in oldFriends) "★ $friend",
  // ];
  // print(newFriends);

  // Maps
  // var player = {
  //   'name' : 'sihyeon',
  //   'xp' : 19.99,
  //   'superpower' : false,
  // };

  // Map<int, bool> playerInt = {
  //   1: true,
  //   2: false,
  //   3: true,
  // };

  // Map<List<int>, bool> playerList = {
  //   [1,2,4,6]: true,
  //   [4,5,7,9,]: false,
  //   [4,2,6,8,]: true,
  // };

  // Set
  // var numbers = {1,2,3,4,};
  // Set<int> numberSet = {1,2,3,4};  // 요소(element)가 항상 하나씩만 있어야 되면 Set을 사용할 것
  // List<int> numberList = [1,2,3,4];  // unique 할 필요가 없다면, List를 사용해도 무관

  // Defining a Function
  //print(sayHello('sihyeon'));

  // Named Parameters
  // print(sayHello(
  //   age: 12,
  //   country: 'France',
  //   name: 'sihyeon',
  //   ));  // => sayHello 함수의 파라미터가 혹시 누락되더라도,
  // String sayHello({String name = 'anon', int age = 99, String country = 'Wakanda'}) 이 형식으로 변경해준다면,
  // 누락 시 default로 따라서 들어오게 됨.
  //print(sayHello());  // 곧바로 이렇게 파라미터를 누락시켜도 무관해짐
  // print(sayHello());  // 타입 앞에 required를 명시하면 반드시 함수 안에 파라미터를 지정해줘야함
  // 그래서
  // print(sayHello(
  //   age: 12,
  //   country: 'France',
  //   name: 'sihyeon',
  //   ));
    // 위와 같이 만들어줄 필요가 생기게 됨.

  // Optional Positional Parameters
  //print(sayHelloOptional('sihyeon', 12, 'cuba'));
  //print(sayHelloOptional('sihyeon', 12));

  // QQ (Question Question)
  //capitalizeName('sihyeon'); // SIHYEON
  //capitalizeName(null); // SIHYEON
  // String? name;
  // name ??= 'sihyeon';
  // name = null;
  // name ??= 'another';
  // print(name);


  // typedef : 자료형에 alias를 붙일 수 있게 해줌
  // print(reverseListOfNumbers([1,2,3]));





  // 241230
  // var player = new Player();  // new 생성자는 반드시 필수는 아님
  // var player = Player();
  // print(player.name);
  // player.sayHello();
  //player.name= 'lalala';
  //print(player.name);
  // var player1 = Player(
  //   name : "sihyeon",
  //   xp : 1500,
  //   team : 'blue',
  //   age : 12
  // );
  // player1.sayHello();

  // var player2 = Player(
  //   name : "lynn",
  //   xp : 2500,
  //   team : 'red',
  //   age : 15
  // );
  // player2.sayHello();

  // var bluePlayer = Player.createBluePlayer(
  //   name : "lynn2",
  //   age : 16
  // );
  // bluePlayer.sayHello();

  // var redPlayer = Player.createRedPlayer("lynn3",17);
  // redPlayer.sayHello();

  // var apiData = [
  //   {
  //     "name" : "sihyeon",
  //     "team" : "red",
  //     "xp" : 0,
  //   },
  //   {
  //     "name" : "lynn22",
  //     "team" : "red",
  //     "xp" : 0,
  //   },
  //   {
  //     "name" : "lynn33",
  //     "team" : "red",
  //     "xp" : 0,
  //   },
  // ];

  // apiData.forEach((playerJson) {
  //  var player = Player.fromJson(playerJson);
  //  player.sayHello();
  // });

  // // Cascade Notation / Cascade Operator
  // var siheyon123 = Player(name: 'siheyon', xp:1, team: 'reddd', age: 12)
  //   // siheyon123
  //   ..name = 'las'
  //   ..xp = 1200000
  //   ..team = 'blue'
  //   ..age = 20
  //   ..sayHello();






}