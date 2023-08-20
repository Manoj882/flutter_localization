

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localization_app/utils/custom_expandable_widget.dart';
import 'package:flutter_localization_app/widgets/tile_widgets/address_details_tile/address_details_tile.dart';
import 'package:flutter_localization_app/widgets/tile_widgets/contact_details_tile/contact_details_tile.dart';
import 'package:flutter_localization_app/widgets/tile_widgets/personal_details_tile/personal_details_tile.dart';

class PersonalDetailsPage extends StatelessWidget {
  const PersonalDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.personalDetails),),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PersonalDetailsTile(),
              SizedBox(height: 16,),
              AddressDetailsTile(),
              SizedBox(height: 16,),
              ContactDetailsTile(),
        
            ],
          ),
        ),
      ),
    );
  }
}