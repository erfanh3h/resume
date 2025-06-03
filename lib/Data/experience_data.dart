import 'package:resume/Models/experience_model.dart';
import 'package:resume/Resources/app_images.dart';
import 'package:resume/Resources/app_texts.dart';

final List<ExperienceModel> experiences = [
  ExperienceModel(
    title: AppTexts.exp6Title,
    name: AppTexts.exp6Name,
    location: AppTexts.exp6Location,
    year: AppTexts.exp6Year,
    tasks: [AppTexts.exp6Task1, AppTexts.exp6Task2, AppTexts.exp6Task3],
  ),
  ExperienceModel(
    title: AppTexts.exp1Title,
    name: AppTexts.exp1Name,
    location: AppTexts.exp1Location,
    year: AppTexts.exp1Year,
    image: AppImages.bitely,
    link: AppTexts.exp1Link,
    tasks: [
      AppTexts.exp1Task1,
      AppTexts.exp1Task2,
      AppTexts.exp1Task3,
      AppTexts.exp1Task4,
      AppTexts.exp1Task5,
    ],
  ),
  ExperienceModel(
    title: AppTexts.exp2Title,
    name: AppTexts.exp2Name,
    location: AppTexts.exp2Location,
    year: AppTexts.exp2Year,
    image: AppImages.barg,
    link: AppTexts.exp2Link,
    tasks: [
      AppTexts.exp2Task1,
      AppTexts.exp2Task2,
      AppTexts.exp2Task3,
      AppTexts.exp2Task4,
      AppTexts.exp2Task5,
    ],
  ),
  ExperienceModel(
    title: AppTexts.exp3Title,
    name: AppTexts.exp3Name,
    location: AppTexts.exp3Location,
    year: AppTexts.exp3Year,
    image: AppImages.meshkee,
    link: AppTexts.exp3Link,
    tasks: [
      AppTexts.exp3Task1,
      AppTexts.exp3Task2,
      AppTexts.exp3Task3,
      AppTexts.exp3Task4,
      AppTexts.exp3Task5,
    ],
  ),
  ExperienceModel(
    title: AppTexts.exp4Title,
    name: AppTexts.exp4Name,
    location: AppTexts.exp4Location,
    year: AppTexts.exp4Year,
    image: AppImages.arad,
    link: AppTexts.exp4Link,
    tasks: [AppTexts.exp4Task1],
  ),
  ExperienceModel(
    title: AppTexts.exp5Title,
    name: AppTexts.exp5Name,
    location: AppTexts.exp5Location,
    year: AppTexts.exp5Year,
    tasks: [AppTexts.exp5Task1],
  ),
];
