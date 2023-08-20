import 'package:flutter/material.dart';
import 'package:flutter_localization_app/utils/custom_expandable_widget.dart';
import 'package:flutter_localization_app/utils/custom_text_form_field.dart';

class PermanentAddressTile extends StatelessWidget {
   PermanentAddressTile({super.key});

  final countryController = TextEditingController();
  final stateController = TextEditingController();
  final cityController = TextEditingController();
  final wardController = TextEditingController();
  final streetController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return CustomExpandableWidget(

      tileTitle: 'Permanent Address',
      tileWidget: Column(
        children: [
          CustomTextFormField(
            hintText: 'Country',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            controller: countryController,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: 'State / Province',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            controller: stateController,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: 'City',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            controller: cityController,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: 'Ward Number',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            controller: wardController,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: 'Street',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            controller: streetController,
          ),
          
        ],
      ),
    );
  }
}
