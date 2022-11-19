import 'package:flutter/material.dart';
import 'package:mp1/VALUES/my_info.dart';
class MyInfoForm extends StatefulWidget {
  const MyInfoForm({Key? key}) : super(key: key);

  @override
  State<MyInfoForm> createState() => _MyInfoFormState();
}
TextEditingController firstNameController = TextEditingController();
TextEditingController lastNameController = TextEditingController();
TextEditingController ageController = TextEditingController();

var selectedGender;

var FormKey = GlobalKey<FormState>();

class _MyInfoFormState extends State<MyInfoForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Information Form"),
      ),
      body: Form(
        key: FormKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            children: [
              TextFormField(
                controller: firstNameController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: "E.g Meinardz",
                  labelText: "Name"
                ),
                validator: (value){
                  return value == null || value.isEmpty ? "Enter First Name" : null;
                },
              ),
              TextFormField(
                  controller: lastNameController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      hintText: "E.g Montefalcon",
                      labelText: "Last Name"
                  ),
                validator: (value){
                  return value == null || value.isEmpty ? "Enter First Name" : null;
                },
              ),
              TextFormField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    hintText: "E.g 21",
                    labelText: "Age"
                ),
                validator: (value){
                  return value == null || value.isEmpty ? "Enter Age" : null;
                },
              ),

              DropdownButtonFormField(
                hint: const Text("Gender"),
                  items: const [
                    
                    DropdownMenuItem(
                        value: "Male",
                        child: Text("Male")
                    ),
                    DropdownMenuItem(
                        value: "Female",
                        child: Text("Female")
                    ),

                  ],
                  onChanged: (value){
                    selectedGender = value!;
                  }
              ),

              SizedBox(height: 25),

              ElevatedButton(
                  onPressed:() async{
                    if(FormKey.currentState!.validate()){
                      var newStudent = await (
                          MyInfo(
                              firstName: firstNameController.text,
                              lastName: lastNameController.text,
                              gender: selectedGender,
                              age: int.parse(ageController.text)

                          )
                      );
                      Navigator.pop(context, newStudent);
                    }
                  },

                  child: Text("Submit")
              )
            ],
          )
      ),


      );

  }
}
/* if(FormKey.currentState!.validate()){
                      var newMyInfo = await(
                        MyInfo(
                            firstName: firstNameController.text,
                            lastName: lastNameController.text,
                          )
                      );
                      Navigator.pop(context, newMyInfo);

                   */