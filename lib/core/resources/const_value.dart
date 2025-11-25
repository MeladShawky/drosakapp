import 'package:drosak/core/resources/assets_values_manger.dart';
import 'package:drosak/model/on_boarding/on_boarding_model.dart';

import '../../model/explore_screen/explore_screen_model.dart';


class ConstValue{
  static const String kNext='التالي';
  static const String kSkip='تخطي';
  static const String kExploreApp='إستكشف التطبيق';
  static const String kOnBoardingText1='يمكنك إضافة  بعض المراحل التعليمية ';
  static const String kOnBoardingText2='يمكنك إضافة  بعض المجموعات لكل مرحلة من المراحل التعليمية';
  static const String kOnBoardingText3='يمكنك إضافة  بعض الطلاب لكل جروب الموجودة في كل مرحلة تعليمية';
  static const String kOnBoardingText4='يمكنك إضافة حضور وغياب لكل طالب';
  static const String kOnBoardingText5='يمكنك إضافة ما إذا كان الطالب دفع هذا الشهر أم لا وإضافة تاريخ الدفع';

  static const String kEducationalStages='المراحل التعليمية';
  static const String kGroups='المجموعات';
  static const String kStudents='الطلاب';
  static const String kTheAudience='الحضور';
  static const String kPaying='الدفع';
}
class ConstListValues{
  static const List<OnBoardingModel> listOnBoardingImageModel=[
    OnBoardingModel(text:ConstValue.kOnBoardingText1 , image:AssetsValuesManger.konBoardingImage1 ),
    OnBoardingModel(text:ConstValue.kOnBoardingText2 , image:AssetsValuesManger.konBoardingImage2 ),
    OnBoardingModel(text:ConstValue.kOnBoardingText3 , image:AssetsValuesManger.konBoardingImage3 ),
    OnBoardingModel(text:ConstValue.kOnBoardingText4 , image:AssetsValuesManger.konBoardingImage4 ),
    OnBoardingModel(text:ConstValue.kOnBoardingText5 , image:AssetsValuesManger.konBoardingImage5 ),
  ];
  static final List<ExploreScreenModel> listExploreScreenModel=[
    ExploreScreenModel(text:ConstValue.kEducationalStages , image:AssetsValuesManger.konBoardingImage1 ),
    ExploreScreenModel(text:ConstValue.kGroups , image:AssetsValuesManger.konBoardingImage2 ),
    ExploreScreenModel(text:ConstValue.kStudents , image:AssetsValuesManger.konBoardingImage3 ),
    ExploreScreenModel(text:ConstValue.kTheAudience , image:AssetsValuesManger.konBoardingImage4 ),
    ExploreScreenModel(text:ConstValue.kPaying , image:AssetsValuesManger.konBoardingImage5 ),
  ];
}