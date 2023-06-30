import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:rive/rive.dart';

void main() => runApp(const form());

class form extends StatelessWidget {
  const form({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Validation Demo';

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

//*   ------------------------------------------------------------------------------------------------------------------------

String name = "", email = "", message = "";
var nameValidator = MultiValidator([
  RequiredValidator(errorText: "Name can't be empty!"),
  //PatternValidator(RegExp('[0-9]'), errorText: "Name can't contain Numbers!")
]);

var emailValidator = MultiValidator([
  RequiredValidator(errorText: "Email can't be empty!"),
  EmailValidator(errorText: "Enter valid email!")
]);

var messageValidator = MultiValidator([
  RequiredValidator(errorText: "Message can't be empty!"),
]);

var nameController = TextEditingController();

var emailController = TextEditingController();

var messageController = TextEditingController();


Future<void> addMessage() async {
  try {
    await FirebaseFirestore.instance.collection('User Messages').add({
      'Name': name,
      'Email': email,
      'Message': message,
    });
    print('Message added successfully!');
  } catch (e) {
    print('Error adding message: $e');
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Container(
      color: const Color.fromRGBO(240, 238, 241, 1),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width * 0.8,
        child: AlertDialog(
          
          alignment: Alignment.center,
          scrollable: true,
          backgroundColor: const Color.fromRGBO(240, 238, 241, 1),
          content: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: const RiveAnimation.network('https://res.cloudinary.com/dvypswxcv/raw/upload/v1680242476/Message_write_nug8m4.riv'))),
                Center(
                    child: Text("Write to Me!",
                        style: GoogleFonts.openSans(
                            fontSize: (MediaQuery.of(context).size.width > 1000) ? 20 : 10, 
                            color: const Color.fromRGBO(15, 27, 97, 1)))),
      
      
                SizedBox(height: MediaQuery.of(context).size.height * 0.04, width: MediaQuery.of(context).size.width * 0.02,),
                //* name ->
                TextFormField(
                  inputFormatters: [
                    FilteringTextInputFormatter.deny(RegExp('[0-9]')),
                  ],
                  //enabled: false,
                  //initialValue: "${currentEmployee.jobID}     [Job ID]",
                  style: TextStyle(
                      color: const Color.fromRGBO(15, 27, 97, 1),
                      //fontFamily: 'Cirka',
                      fontSize:
                          (MediaQuery.of(context).size.width > 1000) ? 20 : 10),
                  //obscureText: false,
                  controller: nameController,
                  validator: nameValidator,
                  onChanged: (value) => name = value,
                  cursorColor: const Color.fromRGBO(15, 27, 97, 1),
                  decoration: InputDecoration(
                    icon: const Icon(Icons.badge_outlined),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    //fillColor: Color.fromRGBO(15, 27, 97, 1),
                    
                    filled: true,
                    hintText: 'Enter your Name...',
                    hintStyle: TextStyle(
                      color: const Color.fromRGBO(36, 45, 98, 1),
                      fontSize:
                          (MediaQuery.of(context).size.width > 1000) ? 20 : 10,
                      //fontFamily: 'Cirka',
                    ),
                    alignLabelWithHint: true,
                  ),
                ),
        
        
                SizedBox(height: MediaQuery.of(context).size.height * 0.04, width: MediaQuery.of(context).size.width * 0.04,),
                //* email ->
        
                TextFormField(
                  style: TextStyle(
                      color: const Color.fromRGBO(15, 27, 97, 1),
                      fontFamily: 'Cirka',
                      fontSize:
                          (MediaQuery.of(context).size.width > 1000) ? 20 : 10),
                  obscureText: false,
                  cursorColor: const Color.fromRGBO(15, 27, 97, 1),
                  controller: emailController,
                  onChanged: (value) => email = value,
                  validator: emailValidator,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.email_outlined),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    //fillColor: Colors.black,
                    filled: true,
                    hintText: 'Enter your Email...',
                    hintStyle: TextStyle(
                      color: const Color.fromRGBO(15, 27, 97, 1),
                      fontSize:
                          (MediaQuery.of(context).size.width > 1000) ? 20 : 10,
                      //fontFamily: 'Cirka',
                    ),
                    alignLabelWithHint: true,
                  ),
                ),
        
        
                SizedBox(height: MediaQuery.of(context).size.height * 0.04, width: MediaQuery.of(context).size.width * 0.04,),
                //* message ->
                TextFormField(
                  style: TextStyle(
                      //color: Colors.white,
                      //fontFamily: 'Cirka',
                      fontSize:
                          (MediaQuery.of(context).size.width > 1000) ? 20 : 10),
                  obscureText: false,
                  cursorColor: const Color.fromRGBO(15, 27, 97, 1),
                  controller: messageController,
                  onChanged: (value) => message = value,
                  validator: messageValidator,
                  decoration: InputDecoration(
                    
                    icon: const Icon(Icons.chat_outlined),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    //fillColor: Colors.black,
                    filled: true,
                    hintText: 'Enter your Message...',
                    hintStyle: TextStyle(
                      color: const Color.fromRGBO(15, 27, 97, 1),
                      fontSize:
                          (MediaQuery.of(context).size.width > 1000) ? 20 : 10,
                      //fontFamily: 'Cirka',
                    ),
                    alignLabelWithHint: true,
                  ),
                  maxLines: 4,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(20),
                        //primary: Color.fromRGBO(236, 200, 246, 1),
                        side: const BorderSide(
                            color: Color.fromRGBO(12, 0, 252, 1), width: 3),
                        textStyle: const TextStyle(
                            fontSize: 20, fontStyle: FontStyle.normal),
                        backgroundColor: const Color.fromRGBO(245, 210, 255, 1),
                        foregroundColor: const Color.fromRGBO(12, 0, 252, 1),
                      ),
                      onPressed: () async {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          try {
                            addMessage();
                            _formKey.currentState!.reset();
                            EasyLoading.showSuccess('Message Sent!', dismissOnTap: true, duration: Duration(milliseconds: 700));
                          }
                          catch(e) {
                            EasyLoading.showError(e.toString());
                          }
                        }
                      },
                      child: Text(
                        "Submit!",
                        style: GoogleFonts.openSans(
                            fontSize: (MediaQuery.of(context).size.width > 1000) ? 20 : 10, color: const Color.fromRGBO(15, 27, 97, 1)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ),
          
        ),
      ),
    );
  }
}
