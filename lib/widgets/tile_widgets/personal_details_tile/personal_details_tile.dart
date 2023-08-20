import 'package:flutter/material.dart';
import 'package:flutter_localization_app/utils/custom_expandable_widget.dart';
import 'package:flutter_localization_app/utils/custom_text_form_field.dart';

class PersonalDetailsTile extends StatelessWidget {
  PersonalDetailsTile({
    required this.onFirstNameChanged,
    required this.onMiddleNameChanged,
    required this.onLastNameChanged,
    required this.onDobChanged,
    super.key});

  final firstNameController = TextEditingController();
  final middleNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final dateOfBirthController = TextEditingController();

  final ValueChanged<String> onFirstNameChanged;
  final ValueChanged<String> onMiddleNameChanged;
  final ValueChanged<String> onLastNameChanged;
  final ValueChanged<String> onDobChanged;


  void _onFirstNameChanged(String value){
    onFirstNameChanged(value);
  }

  void _onMiddleNameChanged(String value){
    onMiddleNameChanged(value);
  }

  void _onLastNameChanged(String value){
    onLastNameChanged(value);
  }

  void _onDobChanged(String value){
    onDobChanged(value);
  }

  @override
  Widget build(BuildContext context) {
    return CustomExpandableWidget(
      tileTitle: 'Personal Details',
      tileWidget: Column(
        children: [
          CustomTextFormField(
            controller: firstNameController,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            hintText: 'First Name',
            onChanged: (value){
              _onFirstNameChanged(value);
            },
          ),
          SizedBox(height: 16,),
          CustomTextFormField(
            controller: middleNameController,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            hintText: 'Middle Name',
            onChanged: (value){
              _onMiddleNameChanged(value);
            },
          ),
          SizedBox(height: 16,),
          CustomTextFormField(
            controller: lastNameController,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            hintText: 'Last Name',
            onChanged: (value){
              _onLastNameChanged(value);
            },
          ),
          SizedBox(height: 16,),
          CustomTextFormField(
            controller: dateOfBirthController,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            hintText: 'Date Of Birth',
            onChanged: (value){
              _onDobChanged(value);
            },
          ),
        ],
      ),
    );
  }
}
