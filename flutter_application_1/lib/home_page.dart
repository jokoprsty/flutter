import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          Image.asset("images/logo2.png",
          width: 50,
          height:50),
          Text("Shofun")
        ],),
        actions: [
          Icon(Icons.shopping_cart),
          SizedBox(width: 20),
          Icon(Icons.notifications),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        children: [
          Center(            
              child: 
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top:20),
                  width: MediaQuery.of(context).size.width-50,
                  height: 50,                  
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Row(children: [
                    Container(
                      padding: EdgeInsets.only(left:10,top:2.5,right:10,bottom:2.5),
                      //height: 10,                      
                      decoration: BoxDecoration(
                        color:Colors.grey,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.location_on),
                          Text("Malang", style:TextStyle(fontWeight: FontWeight.w700))
                        ],),),
                    Container(
                      height: 40,
                      child: VerticalDivider(),),
                    Expanded(
                     // width: 300,
                      child:TextFormField(
                        maxLines: 1,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(50)),
                          prefixIcon: Icon(Icons.search),
                          filled: true,
                          fillColor: Colors.white,
                          hintText:"Coba",
                          contentPadding: EdgeInsets.zero,
                          
                       
                      ), 
                    ))
                  ]),),
                
          ),
          Container(           
            margin: EdgeInsets.only(top:20),
            child: SingleChildScrollView( 
              scrollDirection: Axis.horizontal,          
              child: Row(children: [
                Container(
                  padding: EdgeInsets.all(5),
                  margin:EdgeInsets.only(left:20,right:20),
                  width: 40,
                  height:40,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  child: Image.asset("images/fashion.png")),
                Container(
                  padding: EdgeInsets.all(5),
                  margin:EdgeInsets.only(right:20),
                  width: 40,
                  height:40,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  child: Image.asset("images/beauty.png")),
                Container(
                  padding: EdgeInsets.all(5),
                  margin:EdgeInsets.only(right:20),
                  width: 40,
                  height:40,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  child: Image.asset("images/sport.png")),
                Container(
                  padding: EdgeInsets.all(5),
                  margin:EdgeInsets.only(right:20),
                  width: 40,
                  height:40,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  child: Image.asset("images/electronic.png")),
                Container(
                  padding: EdgeInsets.all(5),
                  margin:EdgeInsets.only(right:20),
                  width: 40,
                  height:40,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  child: Image.asset("images/automotive.png"))
          ],)))
        ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:'home'),
          BottomNavigationBarItem(icon: Icon(Icons.wallet),label:'wallet'),
          BottomNavigationBarItem(icon: Icon(Icons.collections),label:'collections'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label:'settings'),
        ],
      )
    );
  }
}