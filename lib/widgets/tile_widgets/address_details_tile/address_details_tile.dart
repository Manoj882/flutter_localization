import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_localization_app/utils/custom_expandable_widget.dart';
import 'package:flutter_localization_app/widgets/tile_widgets/address_details_tile/permanent_address_tile.dart';
import 'package:flutter_localization_app/widgets/tile_widgets/address_details_tile/temporary_address_tile.dart';

class AddressDetailsTile extends StatelessWidget {
  const AddressDetailsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpandableWidget(
      tileTitle: 'Address Details',
      tileWidget: Column(
      children: [
        PermanentAddressTile(),
        SizedBox(height: 16,),
        TemporaryAddresstile(),

      ],
    ),
    );
  }
}
