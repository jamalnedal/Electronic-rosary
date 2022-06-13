import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}
class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();

}

class _MyappState extends State<Myapp> {
  int _counter=0;
  String _conent='الحمد الله';
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          extendBodyBehindAppBar: true,
          floatingActionButton: Container(
            margin: EdgeInsets.only(right: 300),
            child: FloatingActionButton(
              child: Icon(Icons.add),
              backgroundColor: Colors.deepOrange.shade400,
              onPressed: (){
                setState(() {
                  ++_counter;
                });
              },

            ),
          ),

          appBar: AppBar(
            centerTitle: true,
            title: const Text('AZKAR',style: TextStyle(
              color: Colors.black,
            )),
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.info)),
              PopupMenuButton<String>(onSelected:(String value){
                if(_conent!= value){
                  setState(() {
                    _conent=value;
                    _counter=0;
                  });
                }
              },itemBuilder: (context){
                return[
                  PopupMenuItem(
                    child: Text('الحمد لله',style:TextStyle(fontSize: 20)),
                    value:'الحمد لله'),
                  PopupMenuItem(
                    child: Text('سبحان الله',style:TextStyle(fontSize: 20)),
                    value:'سبحان الله'),
                  PopupMenuItem(
                    child: Text('لا الاه الا الله',style:TextStyle(fontSize: 20)),
                    value:'لا الاه الا الله'),
                ];
              },)
              
            ],
          ),
          body:

          DecoratedBox(
           decoration: BoxDecoration(
             gradient: LinearGradient(
               colors: [
                 Colors.teal.shade200,
                 Colors.teal.shade800,
               ]
             )
           ),

            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    clipBehavior: Clip.antiAlias,
                    height: 90,
                    width: 90,
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvF0FPptHCMaOTf1uV_RLDtD4-yQY4RlHQZA&usqp=CAU'
                    ),


                  ),

                  Card(
                    margin: EdgeInsets.only(bottom: 15),
                    clipBehavior: Clip.antiAlias,
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                         Expanded(
                     child:Text( _conent,textAlign: TextAlign.center,style: TextStyle(fontSize:20 ),),


                         ),

                        Container(
                          alignment: Alignment.center,
                          color: Colors.teal.shade200,
                          width:40,
                          height: 40,
                          child:Text(_counter.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ),


                        ],
                  ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex:1,
                      child:ElevatedButton(onPressed: (){
                        setState(() {
                          _counter=0;
                        });
                      },
                          child: Text('اعادة'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(10))
                          )
                        ),),),

                      Expanded(
                        flex: 2,
                        child: ElevatedButton(onPressed: (){
                          setState(() {
                            ++_counter;
                          });
                        },
                            child: Text('تسبيح'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.teal.shade800,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusDirectional.only(bottomEnd: Radius.circular(10))
                              )
                        ),
                      ),
                      ),

                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
    ); // This trailing comma makes auto-formatting nicer for build methods.

  }
  }

