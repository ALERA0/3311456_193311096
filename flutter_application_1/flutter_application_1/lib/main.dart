import 'package:flutter/material.dart';
import 'package:flutter_application_1/comp_type.dart';
import 'package:flutter_application_1/components/bottomNavigation.dart';
import 'package:flutter_application_1/sign_page.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Giriş Ekranı',
      theme: ThemeData(),
          
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(246, 49, 115, 52),
            title: const Text("Giriş Ekranı",
            style: TextStyle(
              fontSize: 20.0, 
              color: Colors.white),
          ),),
          body:  LoginHome()),

    );
  }
}

class LoginHome extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SafeArea(
        child: Stack(
          children: [
            Container(

              //buldugun alana yayil
              width: double.infinity,
              
              color: Color.fromARGB(255, 129, 115, 115),
              
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                            color: Color.fromARGB(255, 109, 161, 111) ,
                            offset: Offset(
                              0.0,
                              15.0,
                            ),
                            blurRadius: 20.0,
                            spreadRadius: 2.0,
                          ), 
                        
                        ],
                  color:Color.fromARGB(255, 130, 187, 132) ,

                   
                  //border: Border.all(),

                  borderRadius: BorderRadius.all(Radius.circular(20),
                )
                ),
 
               
                margin: EdgeInsets.only(right: 50,left: 50,top:20,bottom: 75),
                

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                
                
               
                children: <Widget>[
                Column(
                  
                  children: [Image.asset("images/icon.png",scale: 3,)],
                  
                ),
               
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: <Widget>[
                      inputFile(label: "Kullanıcı Adı",),
                      inputFile(label: "Şifre", obscureTexT: true)
                    ],
                  ),
                ),
                

                //Giriş butonu için oluşturulan Container
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    
                    decoration: BoxDecoration(
                    
                  boxShadow: const [
                    BoxShadow(
                            color: const Color.fromARGB(246, 49, 115, 52),
                            offset: Offset(
                              -2.0,
                              -2.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                         
                        ],
                      
                        borderRadius: BorderRadius.circular(50),
                        border: const Border(
                          bottom: BorderSide(color: Colors.black,),
                          top: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                        ) ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {

                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Comp_Type() ));
                         
                      },
                      
                      color: const Color.fromARGB(246, 49, 115, 52),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        
                        
                      ),
                      
                      child: const Text(
                        "Giriş Yap",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                
                Material(
                  color:Color.fromARGB(255, 130, 187, 132),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    const Text("Hesabınız Yok Mu?     ",),
                    MaterialButton(onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Sign_Page() ));
                    }, 
                    color:Color.fromARGB(255, 37, 122, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        
                      ),
                    
                    child: const Text("Kayıt Ol",
                    style: TextStyle(
                      
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                      ),
                      )
                    
                    
                    )
                  ],
                ),
                 
                ),
                ],
            ),
              ),
              
            ),
           

            //BOTTOM NAVIGATION BAR

            bottomNavigationBar()

            
          ],
        ),
      ),
    );
    
  }

 
}



Widget inputFile({label, obscureTexT = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: const TextStyle(
            fontSize: 15, 
            fontWeight: FontWeight.w400, 
            color:  Colors.white
            ),
      ),

      const SizedBox( height: 5,),

      TextField(
        obscureText: obscureTexT,
        decoration: const InputDecoration(
          fillColor: Colors.white,
          filled: true,
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 130, 187, 132),
                ),
            ),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
  
                borderSide: BorderSide(
                  color: Colors.black,
                  )
                ),

                focusedBorder: OutlineInputBorder(
                   borderSide:  BorderSide(
                     color: Colors.white 
                     )
                )
                ),
      ),

      //const SizedBox(height: 10 )
    ],
  );
}