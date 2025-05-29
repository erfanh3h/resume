import 'package:resume/Models/experience_model.dart';
import 'package:resume/Resources/app_images.dart';
import 'package:resume/Resources/app_texts.dart';

final List<ExperienceModel> experiences = [
  ExperienceModel(
    title: AppTexts.exp1Title,
    name: AppTexts.exp1Name,
    location: AppTexts.exp1Location,
    year: AppTexts.exp1Year,
    image: AppImages.bitely,
    tasks: [
      AppTexts.exp1Task1,
      AppTexts.exp1Task2,
      AppTexts.exp1Task3,
      AppTexts.exp1Task4,
      AppTexts.exp1Task5,
    ],
  ),
];
