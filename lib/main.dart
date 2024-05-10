import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'LOGİN-Screen'),
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

    var ekranbilgisi = MediaQuery.of(context);
    var ekranyuksekligi = ekranbilgisi.size.height;
    var ekrangenisligi = ekranbilgisi.size.width;


    return Scaffold(
        backgroundColor: Colors.deepPurple,

        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
            
                Padding(
                  padding:  EdgeInsets.only(top: ekranyuksekligi/10),
                  child: SizedBox(width:ekrangenisligi/3,child: Image.asset("resimler/newlogin.png")),),
            
                Padding(
                  padding:  EdgeInsets.only(top: ekranyuksekligi/15),
                  child: TextField(decoration: InputDecoration(
                    hintText: "Kullanıcı Adı",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(ekrangenisligi/50))
                    )
                  ),),
                ),
                
            
                Padding(
                  padding:  EdgeInsets.only(top: ekranyuksekligi/15),
                  child: TextField(decoration: InputDecoration(
                    hintText: "Şifre",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(ekrangenisligi/50))
                    )
                  ),),
                ),
            
                Padding(
                  padding:  EdgeInsets.only(top: ekranyuksekligi/10),
                  child: SizedBox(width: ekrangenisligi/3,child: ElevatedButton(onPressed: (){print("giriş yapıldı");}, child: Text("Login"))),
                ),
            
                Padding(
                  padding:  EdgeInsets.only(top: ekranyuksekligi/30),
                  child: GestureDetector(child: Text("Yardım !",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: ekrangenisligi/30),),),
                )
            
            
            
            
            
              ],
            ),
          ),

        ),


       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
