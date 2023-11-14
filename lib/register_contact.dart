import "package:flutter/material.dart";
import "package:translate_this/my_home_page.dart";
import "package:translate_this/text_boton.dart";

class RegisterContact extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _RegisterContact();

}

class _RegisterContact extends State<RegisterContact> {

  TextEditingController controllerName = TextEditingController(); 
  TextEditingController controllerSurname = TextEditingController();
  TextEditingController controllerPhone = TextEditingController();

  @override
  void initState(){
    controllerName = new TextEditingController();
    controllerSurname = new TextEditingController();
    controllerPhone = new TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Register new contact"),
      ),
      body: ListView(
        children: [
          TextBox(controllerName, "First Name"),
          TextBox(controllerSurname, "Last Name"),
          TextBox(controllerPhone, "Phone number"),

          ElevatedButton(
            onPressed: () {
              String name = controllerName.text;
              String surname = controllerSurname.text;
              String phone = controllerPhone.text;

              if( name.isNotEmpty && surname.isNotEmpty && phone.isNotEmpty ){
                Navigator.pop(context, new Client(name: name, surname: surname, phone: phone));
              }
            }, 
            child: Text("Save")
          )
        ],
      ),
    );
  }

}