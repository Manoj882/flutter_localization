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

  PersonDetails? _personalDetails;

  void _updatePersonalDetails(PersonDetails details) {
    setState(() {
      _personalDetails = details;
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
                onPersonalDetailsChanged: _updatePersonalDetails,
                
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
                  final userInfo = UserInfo(personDetails: _personalDetails!);
                  
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
