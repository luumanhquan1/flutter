import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maytinh/Bloc/tinhBloc.dart';
import 'package:maytinh/Culur/hopLe.dart';
class Maytinhstf extends StatefulWidget {
  @override
  _MaytinhstfState createState() => _MaytinhstfState();
}

class _MaytinhstfState extends State<Maytinhstf> {

  String _text='';

  void laytext(String history){
    _text=_text+history;
  }
  String _histo;
  void history(String text){
    _histo=_text;
  }
  tinhBloc bloc=new tinhBloc();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          color: Colors.black,
          child:Column(
            children: <Widget>[
              Container(
                alignment: AlignmentDirectional.bottomEnd,
                width: double.infinity,
                height:230,
                color: Colors.black,
                child: StreamBuilder(
                  stream: bloc.hienthi,
               builder: (context,snapshot)=> Text('${snapshot.hasData ? snapshot.data:0}',style: TextStyle(fontSize: 50,color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Container(
                  width: double.infinity,
                  height: 550,
                  color: Colors.black,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 83,
                            height:83,
                            child: RaisedButton(
                                onPressed: (){
                                  _text="";
                                  bloc.hienThi(_text);
                              },
                              color: Colors.white70,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(70)
                              ),
                              child: Text("AC",style: TextStyle(fontSize: 20),),
                            ),
                          ),
                          Container(
                            width: 15,
                          ),
                          SizedBox(
                            width: 83,
                            height:83,
                            child: RaisedButton(
                              onPressed: (){

                              },
                              color: Colors.white70,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(70)
                              ),
                              child: Text("+/-",style: TextStyle(fontSize: 20),),
                            ),
                          ),
                          Container(
                            width: 15,
                          ),
                          SizedBox(
                            width: 83,
                            height:83,
                            child: RaisedButton(
                              onPressed: (){

                              },
                              color: Colors.white70,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(70)
                              ),
                              child: Text("%",style: TextStyle(fontSize: 30),),
                            ),
                          ),
                          Container(
                            width: 15,
                          ),
                          SizedBox(
                            width: 83,
                            height:83,
                            child: RaisedButton(
                              onPressed: (){
                                   history(_text);
                                   _text="";
                                   laygiatri.laydau("/");
                              },
                              color: Colors.amber,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(70)
                              ),
                              child: Text("/",style: TextStyle(fontSize: 30,color: Colors.white),),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 83,
                            height:83,
                            child: RaisedButton(
                              onPressed: (){
                                   laytext("7");
                                   bloc.hienThi(_text);
                              },
                              color: Colors.white24,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(70)
                              ),
                              child: Text("7",style: TextStyle(fontSize: 30,color: Colors.white),),
                            ),
                          ),
                          Container(
                            width: 15,
                          ),
                          SizedBox(
                            width: 83,
                            height:83,
                            child: RaisedButton(
                              onPressed: (){
                                      laytext("8");
                                      bloc.hienThi(_text);
                              },
                              color: Colors.white24,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(70)
                              ),
                              child: Text("8",style: TextStyle(fontSize: 30,color: Colors.white),),
                            ),
                          ),
                          Container(
                            width: 15,
                          ),
                          SizedBox(
                            width: 83,
                            height:83,
                            child: RaisedButton(
                              onPressed: (){
                                  laytext("9");
                                  bloc.hienThi(_text);
                              },
                              color: Colors.white24,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(70)
                              ),
                              child: Text("9",style: TextStyle(fontSize: 30,color: Colors.white),),
                            ),
                          ),
                          Container(
                            width: 15,
                          ),
                          SizedBox(
                            width: 83,
                            height:83,
                            child: RaisedButton(
                              onPressed: (){
                                history(_text);
                                _text="";
                                laygiatri.laydau("x");
                              },
                              color: Colors.amber,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(70)
                              ),
                              child: Text("X",style: TextStyle(fontSize: 30,color: Colors.white),),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 83,
                            height:83,
                            child: RaisedButton(
                              onPressed: (){
                                    laytext("4");
                                    bloc.hienThi(_text);
                              },
                              color: Colors.white24,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(70)
                              ),
                              child: Text("4",style: TextStyle(fontSize: 30,color: Colors.white),),
                            ),
                          ),
                          Container(
                            width: 15,
                          ),
                          SizedBox(
                            width: 83,
                            height:83,
                            child: RaisedButton(
                              onPressed: (){
                                 laytext("5");
                                 bloc.hienThi(_text);
                              },
                              color: Colors.white24,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(70)
                              ),
                              child: Text("5",style: TextStyle(fontSize: 30,color: Colors.white),),
                            ),
                          ),
                          Container(
                            width: 15,
                          ),
                          SizedBox(
                            width: 83,
                            height:83,
                            child: RaisedButton(
                              onPressed: (){
                                   laytext("6");
                                   bloc.hienThi(_text);
                              },
                              color: Colors.white24,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(70)
                              ),
                              child: Text("6",style: TextStyle(fontSize: 30,color: Colors.white),),
                            ),
                          ),
                          Container(
                            width: 15,
                          ),
                          SizedBox(
                            width: 83,
                            height:83,
                            child: RaisedButton(
                              onPressed: (){
                                history(_text);
                                _text="";
                                laygiatri.laydau("-");
                              },
                              color: Colors.amber,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(70)
                              ),
                              child: Text("-",style: TextStyle(fontSize: 60,color: Colors.white),),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 83,
                            height:83,
                            child: RaisedButton(
                              onPressed: (){
                                   laytext("1");
                                   bloc.hienThi(_text);
                              },
                              color: Colors.white24,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(70)
                              ),
                              child: Text("1",style: TextStyle(fontSize: 30,color: Colors.white),),
                            ),
                          ),
                          Container(
                            width: 15,
                          ),
                          SizedBox(
                            width: 83,
                            height:83,
                            child: RaisedButton(
                              onPressed: (){
                                       laytext("2");
                                       bloc.hienThi(_text);
                              },
                              color: Colors.white24,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(70)
                              ),
                              child: Text("2",style: TextStyle(fontSize: 30,color: Colors.white),),
                            ),
                          ),
                          Container(
                            width: 15,
                          ),
                          SizedBox(
                            width: 83,
                            height:83,
                            child: RaisedButton(
                              onPressed: (){
                           laytext("3");
                           bloc.hienThi(_text);
                              },
                              color: Colors.white24,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(70)
                              ),
                              child: Text("3",style: TextStyle(fontSize: 30,color: Colors.white),),
                            ),
                          ),
                          Container(
                            width: 15,
                          ),
                          SizedBox(
                            width: 83,
                            height:83,
                            child: RaisedButton(
                              onPressed: (){
                                history(_text);
                                _text="";
                                laygiatri.laydau("+");
                              },
                              color: Colors.amber,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(70)
                              ),
                              child: Text("+",style: TextStyle(fontSize: 50,color: Colors.white),),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 170,
                            height:83,
                            child: RaisedButton(
                              onPressed: (){
                                     laytext("0");
                                     if(_text.length==1){
                                       _text="";
                                     }
                                     bloc.hienThi(_text);
                              },
                              color: Colors.white24,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(70)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 96, 0),
                                child: Text("0",style: TextStyle(fontSize: 30,color: Colors.white),),
                              ),
                            ),
                          ),
                          Container(
                            width: 15,
                          ),

                          Container(
                            width: 15,
                          ),
                          SizedBox(
                            width: 83,
                            height:83,
                            child: RaisedButton(
                              onPressed: (){

                              },
                              color: Colors.white24,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(70)
                              ),
                              child: Text(",",style: TextStyle(fontSize: 50,color: Colors.white),),
                            ),
                          ),
                          Container(
                            width: 15,
                          ),
                          SizedBox(
                            width: 83,
                            height:83,
                            child: RaisedButton(
                              onPressed: (){
                                     laygiatri.hientai(_text);
                                     laygiatri.hisTory(_histo);
                                     bloc.hienThi("=");
                                     _text=bloc.ketqua.toString();

                              },
                              color: Colors.amber,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(70)
                              ),
                              child: Text("=",style: TextStyle(fontSize: 50,color: Colors.white),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ) ,
        ),
      ),
    );
  }

}



