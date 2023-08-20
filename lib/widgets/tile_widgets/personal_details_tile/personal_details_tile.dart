import 'package:flutter/material.dart';
import 'package:flutter_localization_app/model/personal_details_model/personal_details.dart';
import 'package:flutter_localization_app/utils/custom_expandable_widget.dart';
import 'package:flutter_localization_app/utils/custom_text_form_field.dart';

class PersonalDetailsTile extends StatelessWidget {
  PersonalDetailsTile({
    required this.onPersonalDetailsChanged,
    
    
    super.key});

  final firstNameController = TextEditingController();
  final middleNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final dateOfBirthController = TextEditingController();

  final ValueChanged<PersonDetails> onPersonalDetailsChanged;

 

 

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
           
          ),
          SizedBox(height: 16,),
          CustomTextFormField(
            controller: middleNameController,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            hintText: 'Middle Name',
          
          ),
          SizedBox(height: 16,),
          CustomTextFormField(
            controller: lastNameController,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            hintText: 'Last Name',
           
          ),
          SizedBox(height: 16,),
          CustomTextFormField(
            controller: dateOfBirthController,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            hintText: 'Date Of Birth',
           
          ),
        ],
      ),
    );
  }

  void _updatePersonalDetails() {
    final details = PersonDetails(
      firstName: firstNameController.text,
      middleName: middleNameController.text,
      lastName: lastNameController.text,
      dob: dateOfBirthController.text,
    );
    onPersonalDetailsChanged(details);
  }
}

