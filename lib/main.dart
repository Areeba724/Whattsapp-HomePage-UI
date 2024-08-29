import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var arrNames=['Areeba','Umair','Sana','Ayesha','Ruhma','Hamza','Hassan','Laiba'];
    var arrayname=['03027898765','03025678987','03045678923','03045678987','03025878987','03025698987','03035678987','03025667987'];
    var image=['assets/images/image.jpeg','assets/images/comsats.jpg','assets/images/logo.png','assets/images/i1.jpeg','assets/images/photo.jpeg','assets/images/picture.jpeg','assets/images/pic.jpeg','assets/images/areeba2.jpeg'];
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:ListView.separated(itemBuilder: (context,index){

    return Card(
    elevation: 3,
    shadowColor: Colors.grey,
     child:   ListTile(
    leading: CircleAvatar(
      child: CircleAvatar(
         backgroundImage: AssetImage(image[index]),
        maxRadius: 20,
      ),
    ),
    title: Text(arrNames[index]),
    subtitle: Text(arrayname[index]),
    trailing: Icon(Icons.access_alarm_rounded),
onLongPress: (){
      Get.defaultDialog(
        title: 'Delete',
        titleStyle: TextStyle(color: Colors.white),
        middleTextStyle: TextStyle(color:Colors.white,),
        middleText: 'Are you sure you want to delete this chat?',
          titlePadding: EdgeInsets.only(top: 30),
          confirm: TextButton(onPressed: (){
            Get.back();
          },
              child: Text('Ok')),
          cancel: TextButton(onPressed: (){
            Get.back();
          },
              child: Text('Cancel')),
        contentPadding: EdgeInsets.all(11),
        backgroundColor: Colors.black,
      );
  // Get.bottomSheet(
  //     Container(
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(31),
  //         color: Colors.amber,
  //       ),
  //       child: Column(
  //         children: [
  //           ListTile(
  //             leading: Icon(Icons.light_mode),
  //             title: Text('Light Theme'),
  //             onTap: (){
  //               Get.changeTheme(ThemeData.light());
  //             },
  //           ),
  //           ListTile(
  //             leading: Icon(Icons.dark_mode),
  //             title: Text('Dark Theme'),
  //             onTap: (){
  //              Get.changeTheme(ThemeData.dark());
  //             },
  //           ),
  //         ],
  //       ),
  //     )
  // );
}

  ),
);
    },
          itemCount: arrNames.length,
        separatorBuilder: (context,index){
        return Divider(height: 5,thickness: 2,);
        }


      )
    );
  }
}
