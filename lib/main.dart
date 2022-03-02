import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Images talk louder than words"),
        backgroundColor: Colors.red[400],
        centerTitle: true,
      ),
      body:GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Card(
            elevation: 50,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[
              Image.asset("images/i1.jpg",width:200,),
              Text("this is a photo gallery app"),
              FlatButton.icon(
                onPressed: (){},
                icon: Icon(Icons.open_in_browser),
                label: Text("view"),
              ),
            ],
    ),
          ),
          Card(
            elevation: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:[
                Image.asset("images/i2.jpg",width:200,),

                FlatButton.icon(
                  onPressed: (){},
                  icon: Icon(Icons.open_in_new),
                  label: Text("open"),
                ),
              ],
            ),
          ),
          Card(
            elevation: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:[
                Expanded(
                    child: Image.asset(
                      "images/i3.jpg",
                      width:200,
                    )
                ),

                FlatButton.icon(
                  onPressed: (){},
                  icon: Icon(Icons.check_circle_outline),
                  label: Text("click"),
                ),
              ],
            ),
          ),
      ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("i am clicked");
        },
        backgroundColor:Colors.red,
        child:Icon(Icons.assistant_navigation),
      ),
    );
  }
}



