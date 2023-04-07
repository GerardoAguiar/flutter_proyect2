import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Gerardo',
      'last_name': 'Aguiar',
      'email': 'gerardoagpe@gmail.com',
      'password': '123456',
      'role':'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Inputs & Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
          
                CustomInputField(
                  labelText: 'Name',
                  hintText: 'User Name',
                  helperText: 'Only Characteres',
                  suffixIcon: Icons.group_outlined, 
                  formProperty: 'first_name' ,
                  formValues: formValues,
                  ),
                 const SizedBox( height: 20 ),
          
                 CustomInputField(
                  labelText: 'Last Name',
                  hintText: 'User Last Name',
                  helperText: 'Only Characteres',
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                 const SizedBox( height: 20 ),

                CustomInputField(
                  labelText: 'Role',
                  hintText: 'User Role',
                  helperText: 'Only Characteres',
                  formProperty: 'role',
                  formValues: formValues,
                ),
                 const SizedBox( height: 20 ),
          
                 CustomInputField(
                  labelText: 'Email',
                  textInputType: TextInputType.emailAddress,
                  hintText: 'User Email Address',
                  helperText: 'Only Characteres',
                  formProperty: 'email',
                  formValues: formValues,
                ),
                 const SizedBox( height: 20 ),
          
                 CustomInputField(
                  labelText: 'Password',
                  hintText: 'User Password',
                  password: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                 const SizedBox( height: 20 ),
          
                ElevatedButton(
                  onPressed: () {

                    FocusScope.of(context).requestFocus(FocusNode());

                    if(!myFormKey.currentState!.validate()){
                      print('Invalited Form');
                      return;
                    }

                    print(formValues);
                  },
                     child: const SizedBox(
                       width: double.infinity,
                       child: Center(child: Text('Save'))
                      ),
                )
              ],
            ),
          ) , ),
          )
      );
 
  }
}

