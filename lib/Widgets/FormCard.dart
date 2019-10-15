import 'package:flutter/material.dart';
//Biblioteca para verificar o tamanho da tela
import 'package:flutter_screenutil/flutter_screenutil.dart';



class FormCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: ScreenUtil.getInstance().setHeight(600),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [ //Uma sombra projetada por uma caixa.
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 15.0),
                blurRadius: 15.0),
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, -10.0),
                blurRadius: 10.0),
          ]),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Login",
                style: TextStyle(
                    fontSize: ScreenUtil.getInstance().setSp(45),
                    fontFamily: "Poppins-Bold",
                    letterSpacing: .6,color: Colors.red[700])),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text("Usuário",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26),color: Colors.red[700])),
            TextField(
              decoration: InputDecoration(
                  hintText: "Usuário",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text("Senha",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26),color: Colors.red[700])),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Senha",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(35),
            ),
           Row(
             children: <Widget>[
               InkWell(
                 child: Container(
                   width: ScreenUtil.getInstance().setWidth(580),
                   height: ScreenUtil.getInstance().setHeight(100),
                   child: Material(
                     color: Colors.red[700],
                     borderRadius: BorderRadius.circular(100),
                     child: InkWell(
                       onTap: () {},
                       child: Center(
                         child: Text("Entrar",
                             style: TextStyle(
                                 color: Colors.white,
                                 fontFamily: "Poppins-Bold",
                                 fontSize: 18,
                                 letterSpacing: 1.0)),
                       ),
                     ),
                   ),
                 ),
               ),
             ],
           ),
           Padding(
             padding: EdgeInsets.all(10),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Esqueceu a senha?",
                    style: TextStyle(
                        color: Colors.red[700],
                        fontFamily: "Poppins-Medium",
                        fontSize: ScreenUtil.getInstance().setSp(28)),
                  )
                ],
              ),
           )
          ],
        ),
      ),
    );
  }

  //Função de "lembrar usuário"
  Widget checkButton(bool isSelected) => Container(
    width: 16.0,
    height: 16.0,
    padding: EdgeInsets.all(2.0),
    decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(width: 2.0, color: Colors.black)),
    child: isSelected
        ? Container(
      width: double.infinity,
      height: double.infinity,
      decoration:
      BoxDecoration(shape: BoxShape.rectangle, color: Colors.black),
    )
        : Container(),
  );
}
