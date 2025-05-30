import 'package:resume/Models/project_model.dart';
import 'package:resume/Resources/app_images.dart';
import 'package:resume/Resources/app_texts.dart';

final List<ProjectModel> projects = [
  ProjectModel(
    title: AppTexts.pj1Title,
    owner: AppTexts.pj1Owner,
    year: AppTexts.pj1Year,
    description: AppTexts.pj1Description,
    link: AppTexts.pj1Link,
    image: AppImages.bitely,
    images: [
      AppImages.pj1_1,
      AppImages.pj1_2,
      AppImages.pj1_3,
      AppImages.pj1_4,
      AppImages.pj1_5,
      AppImages.pj1_6,
    ],
  ),
];
