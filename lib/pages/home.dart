import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  List quotes= ["Im selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you cant handle me at my worst, then you sure as hell dont deserve me at my best",
  "“Be yourself; everyone else is already taken.”","“Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.”"

  ];
  int i=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                          child: Center(
                            child: Container(
                width:350,
                height:200,
                margin: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Center(child: Text(quotes[i],style:TextStyle(color: Colors.grey,fontStyle: FontStyle.italic),))),
                          ),
            ),
            Divider(thickness:1.3),
            Padding(
              padding: const EdgeInsets.only(top:18),
              child: FlatButton.icon(
                  onPressed: _showQuote,
                  icon: Icon(Icons.wb_sunny),
                  label: Text("inspire me",style:TextStyle(color:Colors.white)),
                  color: Colors.greenAccent.shade700,),
            ),
            Spacer(
              flex: 1,
            )
                
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    if(i<2){
   setState((){i++;});}
   else{
     setState((){i=0;});
   }
  }
}
