import 'package:flutter/material.dart';

class CustomExpandableWidget extends StatefulWidget {
  const CustomExpandableWidget({
    required this.tileTitle,
    required this.tileWidget,
    super.key});

  final String tileTitle;
  final Widget tileWidget;

  @override
  State<CustomExpandableWidget> createState() => _CustomExpandableWidgetState();
}

class _CustomExpandableWidgetState extends State<CustomExpandableWidget> {

  UniqueKey? _tileKey;
  bool _isExpanded = false;

  void expandTile() {
    setState(() {
      _isExpanded = true;
      _tileKey = UniqueKey();
    });
  }

  void shrinkTile() {
    setState(() {
      _isExpanded = false;
      _tileKey = UniqueKey();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
          side: BorderSide(color: Colors.grey.shade500),
        ),
        
        
        child: ExpansionTile(
          key: _tileKey,
          initiallyExpanded: _isExpanded,
          title: Text(widget.tileTitle),
          onExpansionChanged: (isExapnded){
            setState(() {
              _isExpanded = isExapnded;
            });
          },
          childrenPadding: const  EdgeInsets.only(right: 16, left: 16, bottom: 16),
          children: [
            _isExpanded ? widget.tileWidget : const SizedBox.shrink(),
          ],
    
        ),
      ),
    );
  }
}
