import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localization_app/model/personal_details_model/personal_details.dart';
import 'package:flutter_localization_app/model/user_info_model/user_info.dart';
import 'package:flutter_localization_app/utils/custom_expandable_widget.dart';
import 'package:flutter_localization_app/widgets/tile_widgets/address_details_tile/address_details_tile.dart';
import 'package:flutter_localization_app/widgets/tile_widgets/contact_details_tile/contact_details_tile.dart';
import 'package:flutter_localization_app/widgets/tile_widgets/personal_details_tile/personal_details_tile.dart';

class PersonalDetailsPage extends StatefulWidget {
  const PersonalDetailsPage({super.key});

  @override
  State<PersonalDetailsPage> createState() => _PersonalDetailsPageState();
}

class _PersonalDetailsPageState extends State<PersonalDetailsPage> {
  String _firstName = '';

  String _middleName = '';

  String _lastName = '';

  String _dob = '';

  void _updateFirstName(String value) {
    setState(() {
      _firstName = value;
    });
  }

  void _updateMIddleName(String value) {
    setState(() {
      _middleName = value;
    });
  }

  void _updateLastName(String value) {
    setState(() {
      _lastName = value;
    });
  }

  void _updateDob(String value) {
    setState(() {
      _dob = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.personalDetails),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PersonalDetailsTile(
                onFirstNameChanged: _updateFirstName,
                onMiddleNameChanged: _updateMIddleName,
                onLastNameChanged: _updateLastName,
                onDobChanged: _updateDob,
              ),
              // SizedBox(height: 16,),
              // AddressDetailsTile(),
              SizedBox(
                height: 16,
              ),
              ContactDetailsTile(),

              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  final userInfoModel = UserInfo(
                    personDetails: PersonDetails(
                      firstName: _firstName,
                      lastName: _lastName,
                      dob: _dob,
                    ),
                  );

                  print('User Info Model: $userInfoModel');
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
