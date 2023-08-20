import 'package:flutter/material.dart';
import 'package:flutter_localization_app/utils/custom_expandable_widget.dart';
import 'package:flutter_localization_app/utils/custom_text_form_field.dart';

class ContactDetailsTile extends StatelessWidget {
  ContactDetailsTile({super.key});

  final phoneController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomExpandableWidget(
      tileTitle: 'Contact Details',
      tileWidget: Column(
        children: [
          CustomTextFormField(
            controller: phoneController,
            hintText: 'Phone Number',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            controller: emailController,
            hintText: 'Email Address',
          ),
        ],
      ),
    );
  }
}
