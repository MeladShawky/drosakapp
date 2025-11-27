import 'package:flutter/material.dart';

import 'package:drosak/view/educational_stages/widgets/educational_stages_header.dart';

class EducationalStagesScreen extends StatelessWidget {
  const EducationalStagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(body:  CustomAppBarEducationalStages(onAdd: () {  }, onSearch: () {  },)),
    );
  }
}
