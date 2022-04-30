// ignore_for_file: avoid_print, deprecated_member_use, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

/* Начало начал, создание главного класса
// void main() => runApp(MaterialApp(
//   home: Text('EBAL TVOY POT'),
// ));

// // => если в классе только 1 функцияя можно не писать фигурные скобки
// // MaterialApp - вшитое в флатер функция которая показывает чисто черный экран
// // home (или любое другое название): Text (инт бул и т д) - параметр которая выводит данные, к примеру текст
// // home принимает только один параметр с 1 значением
*/

/* методы + виджет
// void main(){
//   runApp(Test());
// }
// // Test() - мой собственный класс

// class Test extends StatelessWidget  {
// @override
//   Widget build(BuildContext context) {
//     return MaterialApp(  
//       theme: ThemeData(primaryColor: Colors.white),
//       home: Text('hello world', style: TextStyle(
//         fontSize:50,
//         color: Colors.red,
//         fontFamily: 'Arial',
//       ))
//     );
//   }
// }

// этот метод возвращает нам 1 объект на основе класса Widget и принимает 1 параметр BuildContext
// т.к. этот класс должен что-то возвращать, значит нужно что-то вернуть, к примеру возвращаем(return) обьект на сонове класса MaterialApp()
// если мы возвращаем MaterialApp мы возвращаем что-то вроде целого окна и в нем мы можем указать конкретные настройки (темы виджеты и тд)
// внутри него можно указать любую настройку, к примеру как ранне home
// в случае с возвратом можно прописывать еще и стили в отличии от просто home: //название прараметра//
// внутри стлия нужно создать объект на основе класса TextStyle

// home -- указыввает что именно будет указываться на главном экране

// {fontSize:30,
// color: Colors.red,           ---------->>>  обычный синтаксис примерно как в СSS
// fontFamily: 'Arial',}

// theme -- указывает основную тему для приложения

// primaryColor - основной цвет
*/

/* создание шапки, основного текста, пробуем стили(шрифт размер цвет), отцентровка
void main(){
  runApp(Test());
}

class Test extends StatelessWidget  {
@override
  Widget build(BuildContext context) {
    return MaterialApp(  
      theme: ThemeData(primaryColor: Colors.white),

      home: Scaffold(

        appBar: AppBar(                                             //шапка
          title: Text('СОЗДАНИЕ ШАПКИ'),                        //текст в шапке
          centerTitle: true,                                        //отцентровка

          ),


        body: Center(

          child:

          Text('this is body', style: TextStyle(
            fontSize: 20,
            color: Colors.green,
            fontFamily: 'Times New Roman'
          ),)

        )

    ),

  );
  }
}

// Scaffold() позволяет использовать сразу несколько классов, всегда должен возвращатся только 1 объект
// т.е. мы говворим что будем выводить только один объект но в самом объекте Scaffold указываем множество других объектов

// AppBar - шапка для приложения
// Body - как в ХТМЛ выводит обычный текст примернео как <p>..</p>

// centerTitle: true - отображение по центру 

// если нужно выровнять body по центру то надо всё что нужно выровнять вставить в Center() нужно это помещать как дочерний объект child:

*/

/* плавающая кнопка

void main(){
  runApp(Test());
}

class Test extends StatelessWidget  {
@override
  Widget build(BuildContext context) {
    return MaterialApp(  
      theme: ThemeData(primaryColor: Colors.white),

      home: Scaffold(

        appBar: AppBar(
          title: const Text('Создание кнопки'),
          centerTitle: true,

          ),


        body: const Center(

          child:

          Text('this is body', style: TextStyle(
            fontSize: 20,
            color: Colors.green,
            fontFamily: 'Arial'
          ),)
        ),

      floatingActionButton: FloatingActionButton(
        child: Text('тык'),
        backgroundColor: Colors.blueGrey,
        onPressed: () {
          print('DONE');
         },
      ),
    ),
  );
  }
}

// кнопка не относится к Scaffold а занчит и к body. Она как бы повверх всего (не варится в этом дерьме)

// floatingActionButton: кнопка + дочеркой к ней подвязываем что-либок
// у кнопки обязательно должна быть фанкция -- onPressed: () {} --
// в onPressed в фигурных скобках записываем все действия после нажатия кнопки

*/

/* иконки


void main(){
  runApp(Test());
}

class Test extends StatelessWidget  {
@override
  Widget build(BuildContext context) {
    return MaterialApp(  
      theme: ThemeData(primaryColor: Colors.white),

      home: Scaffold(

        appBar: AppBar(
          title: const Text('Иконки'),
          centerTitle: true,

          ),


        body: const Center(

          child: Icon(Icons.settings, size: 100, color: Colors.blue),      ---- NEW :0

        ),

      floatingActionButton: FloatingActionButton(
        child: const Text('тык'),
        backgroundColor: Colors.blue,
        onPressed: () {
          print('DONE');
         },
      ),
    ),
  );
  }
}

// Icon(Icons.иконка) - класс вызывающий иконки, пишется в дочерке
// все виды иконок прописаны в офф документации https://api.flutter.dev/flutter/material/Icons-class.html
// к иконоке можно применить разные стили, например size

*/

/* виджеты кнопок + новые кнопки помимо floatingActionButton

void main(){
  runApp(Test());
}

class Test extends StatelessWidget  {
@override
  Widget build(BuildContext context) {
    return MaterialApp(  
      theme: ThemeData(primaryColor: Colors.white),

      home: Scaffold(

        appBar: AppBar(
          title: const Text('Виджеты кнопок + новые кнопки'),
          centerTitle: true,

          ),


        body: Center(

          child: ElevateButton.icon(onPressed: () {print ('hello world!');}, label: Text('кнопка с иконкой ХД'), icon: Icon(Icons.hd))
          // RaisedButton.icon(onPressed: () {print ('hello world!');}, icon: Icon(Icons.airplay), label: Text("airplay"), color: Colors.blue)
          // RaisedButton(onPressed: () {print ('hello world!');}, child: Text('ебани'), color: Colors.blue,)
          // FlatButton(onPressed: () {print ('hello world!');}, child: Text('ебани'), color: Colors.blue,)

        ),

      floatingActionButton: FloatingActionButton(
        child: const Text('тык'),
        backgroundColor: Colors.blue,
        onPressed: () {
          print('DONE');
         },
      ),
    ),
  );
  }
}

// FlatButton создает прямоугольную кнопулю
// кнопку можно вызвать классом  FlatButton + он создаст onPressed: тут нужно въебать круглые скобки по приколу а потом фигурные, где будет весь код
// помимо этого оно еще созхдает дочерку в которой можно подвязать какой-нить дочерний объект, например Техt
// + к кнопке после дочерки можно подвязать стили CSS

// RaisedButton то же самое что и FlatButton только она с небольшой обводкой + тень, при нажатии она становится чуть более темной
// .icon иконку в кнопку icon: Icon(Icons:иконка)
// RaisedButton и FlatButton в момент написание перечеркнутые - это значит что онги являються устаревшими, но ими можно пользоваться



// но в последнее время используються новые классы такие как:


// ElevatedButton() при нажатии исходят волны в месте нажатия + тень, спавнится сразу с цветом Colors.blue
// если хотим исп иконку то нужно вместо child прописать label

// OutlinedButton прописыввается так же как и ElevatedButton делает задник почти прозрачыным (по дефолту) а текст цветным 
//(по сути конвертит цвета относительено ElevatedButton)

// TextButton убирает рамку от кнопки


// ко всем ранне упомянутым кнопкам можно добавлять иконки (при подставке иконки нужно менять child HA label)
// все виды иконок прописаны в офф документации https://flutter.dev/docs/development/ui/widgets/material
// к кнопкам можно еще прописать помимо onPressed longPressed

*/

/* изображения

void main(){
  runApp(Test());
}

class Test extends StatelessWidget  {
@override
  Widget build(BuildContext context) {
    return MaterialApp(  
      theme: ThemeData(primaryColor: Colors.white),

      home: Scaffold(

        appBar: AppBar(
          title: const Text('ИЗОБРАЖЕНИЯ'),
          centerTitle: true,

          ),


        body: Center(

          child: Image(
            //image: AssetImage('assets/gay.jpg')
            image: NetworkImage('https://i.pinimg.com/originals/c0/4f/12/c04f12db21b2c2c9ad233344596becc0.jpg'),
          )

        ),

      floatingActionButton: FloatingActionButton(
        child: const Text('тык'),
        backgroundColor: Colors.blue,
        onPressed: () {
          print('DONE');
         },
      ),
    ),
  );
  }
}

//Image() прописывается в дочернем классе с созданием свой функции image: а потом как в html, т.е. нужно указать полный путь к картинке 
//либо файлом либо ссылкой
// если исп ссылку то нужно прописать image: NetworkImage('URL')
// если исп локальное изображение то нужно закинуть в папку IOS, Android или создать свою для обеих устройств
// потом нужно указать AssetImage и в скобках полный путь к изображению

*/

/* контейнер + отступы
void main(){
  runApp(Test());
}

class Test extends StatelessWidget  {
@override
  Widget build(BuildContext context) {
    return MaterialApp(  
      theme: ThemeData(primaryColor: Colors.white),

      home: Scaffold(

        appBar: AppBar(
          title: const Text('КОНТЕЙНЕРЫ'),
          centerTitle: true,

          ),


        body: Container(
          color: Colors.blue,
          child: Text('Container'),
          margin: EdgeInsets.fromLTRB(100, 40, 60, 80),

          padding: EdgeInsets.all(50.5)
        ),

      floatingActionButton: FloatingActionButton(
        child: const Text('тык'),
        backgroundColor: Colors.blue,
        onPressed: () {
          print('DONE');
         },
      ),
    ),
  );
  }
}

//контейнер что-то вроде div в HTML
// что б создать контейнер прописывает одноимекнный класс Container()
// в контейнере можно указывать дочерний объект
// в контейнер так же можно добавлять стили

//я убрал Center т.к. сеййчас буду работать с отступами

// margin - внешний отступ
// EdgeInsets - отступает по диагонали от угла

// padding - внутренние отступы
// можно использовать все те же указатели как в margin

// .zero - все отступы будут равны 0
// .all(double значение)
// .symmetric (horizontal: , vertical: ) можно самому установить значения отступа
// .fromLTRB(left, top, right, bottom) - можно указать отступы со всех сторон
// .only (left: , right: , top: , bottom: ) - укзаываем от какой именно части мы отступаем





// (double число с запятой(дробное))
// нужно везде исп double число, но если не ставить точки все скомпилиться и будет ок :)

*/

/* вывод нескольких объектов + система сеток

void main(){
  runApp(Test());
}

class Test extends StatelessWidget  {
@override
  Widget build(BuildContext context) {
    return MaterialApp(  
      theme: ThemeData(primaryColor: Colors.white),

      home: Scaffold(

        appBar: AppBar(
          title: const Text('Система ячеек'),
          centerTitle: true,

          ),


// создаем колонку

          //  body: Column(
          //  children: [
          //     Text('1 ячейка'),
          //     ElevatedButton(onPressed: () {print ('hello world!');}, child: Text('2 ячейка')),
          //  ],
          // ),


// создаем ряд

        // body:Row(
        //   children: [
        //     Text('1 ячейка'),
        //     ElevatedButton(onPressed: () {print ('hello world!');}, child: Text('2 ячейка')),
        //   ]
        // ),


//в данном случае создаем 1 ряд и в ряду создаем 1 колонку

        // body: Row(
        //   children: [
        //     Column(
        //       children: [
        //         Text('1 ячейка'),
        //         ElevatedButton(onPressed: () {print ('hello world!');}, child: Text('2 ячейка')),
        //       ],
        //     ),


// в этом  случае создаем сразу несколько столбцов (3) в 1 ряду

        body: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.end,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('1 ячейка'),
                ElevatedButton(onPressed: () {print ('hello world!');}, child: Text('2 ячейка')),
                ElevatedButton(onPressed: () {print ('hello world!');}, child: Text('еще акая-то кнопуля')),
              ],
            ),
            Column(
              children: [
                Text('3 ячейка'),
                ElevatedButton(onPressed: () {print ('hello world!');}, child: Text('4 ячейка')),
              ],
            ),
            Column(
              children: [
                Text('5 ячейка'),
                ElevatedButton(onPressed: () {print ('hello world!');}, child: Text('6 ячейка')),
              ],
            ),
          ],
        ),

      floatingActionButton: FloatingActionButton(
        child: const Text('тык'),
        backgroundColor: Colors.blue,
        onPressed: () {
          print('DONE');
         },
      ),
    ),
  );
  }
}

// система секток (grid) делает сетку где можно выводить отдельные объекты

//для созд сеток нужно исп классы Row и Column (ряды и столбцы)
// для них нужно исп уже не child а children: []
// [] - массив который принимает виджет
// в массив можно вписывать уже разыне штуки

//так же это можно комбинировать
// к примеру в Row прописать несколько столбцов Column
// просто повестив в 1 ряд несколько колонок


// элементы таблицы можно располагать в разных местах
// для этого нужно добавить всего 1 свойство - mainAxisAlignment

// mainAxisAlignment трансформирует все по-горизонтальным рядам
// crossAxisAlignment - трансформирует все по-вертикальным рядам


//здесь можно указывать виды через точку к примеру:
// mainAxisAlignment: MainAxisAlignment

// .end - все переместиться в конец ряда
// .start - все уйдет в верхний левый угол (ничего не изм если не добавлялось что-либо ранее)
// .spaceBetween - разделят элементы ячейки по 1 пусой колонке между ними (если больше 2х) , если 2 то раскидатет их по разным сторонам
// .center - переместит все в центр
// .spaceAround - располагает все елементы на равном расстоянии друг от друга


// так же все вышеперечисленные стили можно применить к столбцу внутри

// все это работает по аналогии с CSS:
// FlexBox & GridSystem

*/

/* ПЕРВОЕ ПРИЛОЖЕНИЕ!!!
void main() {
  runApp(MaterialApp(
    home: UserProfile(),
  ));
}

//лучше всего в void main() сразу указывать MaterialApp т.к. там сразу можно прописать сколько будет страниц
// а уже потом к необходимым страницам возвращать данные из других классов

//для быстрой прописи класса можно исп stless (хоткей по созданию нового класса)




class  UserProfile extends StatelessWidget {
  const UserProfile ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(179, 189, 255, 1), // - задает цвет задника для всего скаффолда(всей страницы)
      appBar: AppBar(
        title: Text('User Profile'),
        centerTitle: true,
        backgroundColor: Colors.black26, //- задает цвет задника для шапки
      ),

//создание круглой аватарки и имени пользователя, но тут нельзя нормально ничего выровнять

      // body: SafeArea(
      //   child: Column(
      //     children: [
      //       CircleAvatar(
      //         backgroundImage: NetworkImage('https://i.pinimg.com/originals/c0/4f/12/c04f12db21b2c2c9ad233344596becc0.jpg'),
      //       ),
      //       Text('Хачу ЭмЭмДенс'),
      //     ],
      //   ),
      // ),

//поэтому лучше сделать через ряды и колонки сразу а потом уже выравнивать с помощью mainAxisAlignment
//если нужно сделать отступы внутри объектов то есть 3 способа:

// 1 способ - создать в колонке в дочернем классе первым обьектом контейнер и в нем указать отступы
// margin - внешний отступ
// padding - внутренние отступы

// 2 способ  - напрямую обратиться к класс Padding (Padding(padding: способ и кол отступа,) 

//3 способ - создать обьект на основе класса SizedBox(height: __, width: __) и указать значения высоты и ширины

      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                // Container(margin: EdgeInsets.all(20), padding: EdgeInsets.all(30),),  ------> 1 способ
                // Padding(padding: EdgeInsets.all(20)),                                 ------> 2 способ
                // SizedBox(height: 20, width: 20),                                      ------> 3 способ
                Padding(padding: EdgeInsets.only(top: 50)),
                CircleAvatar(
                  backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/147/147144.png'),
                  radius: 50,
                ),
                Text('Крутой Программист', style: TextStyle(
                  fontSize: 28,
                  color: Color.fromARGB(255, 87, 0, 127) ),
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 35)), //отступ сверху
                    Icon(Icons.mail_outline, size: 25),
                    Padding(padding: EdgeInsets.only(left: 8)),
                    Text('CoolProgrammer@gmail.com')
                  ]
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// лучше вместо заспавненого контейнера исп Scaffold();

// SafeArea() - распологает все объекты в "безопасной зоне"
// "безопасной зоной" считается зона, которая не заходит в различные пункты меню (к примеру шапка или панель управвления на андройд)

// CircleAvatar() создает круглую аватарку (как в инстаграмме)
// radius - указывает размер аватарки

// если выделить или навестись на .fromRGBO(179, 189, 255, 1) откроется палитра цветов

*/

/* видоизменяемое состояние
void main() {
  runApp(MaterialApp(
    home: UserProfile(),
  ));
}


class  UserProfile extends StatefulWidget {
  const UserProfile ({ Key? key }) : super(key: key);

  @override
  _UserProfileState createState () =>  _UserProfileState();}



class _UserProfileState extends State<UserProfile> {                //теперь тут можно кодить состояния обычный дарт

  int _cnt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(179, 189, 255, 1),
      appBar: AppBar(
        title: Text('User Profile'),
        centerTitle: true,
        backgroundColor: Colors.black26, 
      ),

      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 50)),
                CircleAvatar(
                  backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/147/147144.png'),
                  radius: 50,
                ),
                Text('Крутой Программист', style: TextStyle(
                  fontSize: 28,
                  color: Color.fromARGB(255, 87, 0, 127) ),
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 35)), //отступ сверху
                    Icon(Icons.mail_outline, size: 25),
                    Padding(padding: EdgeInsets.only(left: 8)),
                    Text('CoolProgrammer@gmail.com')
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 35)),
                Text("Count: $_cnt", style: TextStyle(fontSize: 35, color: Color.fromARGB(255, 87, 0, 127) )),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('тык'),
        backgroundColor: Colors.blueGrey,
        onPressed: () {
          setState(() {
            _cnt++;
            if (_cnt == 10) {
              _cnt = 0;
            }
          });;
      },
      ),
    );
  }
}

//Состояния -> исп для видоизменения каких-либо полей
// что бы создать класс с изм состоянием можно просто тыкнуть по подсказке и convert to stateful widget

// создастся новая штука
//  @override
//   State<названиекласса> createState() { 
//     _названиекласса();}
// }

// class _названиеклассаState extends State<названиекласса> {
//   @override

// а весь код перенесся в Widget build(BuildContext context) {

// теперь в фигурных скобках после State<> мы можем прописывать состояния (т.е. код)

// и теперь за счет класса State<> мы можем исп различные состояния

// по сути я вижу в этом аналогию с JavaScript где ранее мы прописываем по-сути то что видит юзер,
// а в скрипте уже прописываем за что должно отвечать тот или иной объект

//Если нужно прописать изменение состояние на кнопку, то после onPressed необходимо написать setState(() {} и уже в фигурных скобках писать скрипт

//по сути каждое приложение будет иметь изменяемое состояние

*/