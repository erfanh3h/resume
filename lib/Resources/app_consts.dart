const String appVersion = "1.2.2";

class FontFamilies {
  static const vazir = "Vazir";
  static const nazanin = "Nazanin";
  static const lotus = "Lotus";
  static const nastaliq = "Nastaliq";
  static const titr = "Titr";
}

class StorageKeys {
  static const String privilege = "privilege";
  static const String token = "token";
  static const String theme = "theme";
}

class GenderTypes {
  static const String male = "برادر";
  static const String female = "خواهر";
  static const String both = "هردو";
}

class CreateUserSelections {
  static final List<String> gendersList = ["", 'برادر', 'خواهر'];
  static final List<String> adminGenderTypes = ["", 'برادر', 'خواهر', "هردو"];
  static final List<String> taaholList = [
    "",
    'مجرد',
    'متاهل',
    'متارکه',
    'فوت همسر',
    'مطلقه',
  ];
  static final List<String> statusList = [
    "",
    'فرآیند تحقیق',
    'فرآیند مصاحبه',
    'مناسبتی',
    "آماده طرح در هسته",
    "ارسال به حفاظت کارکنان",
    "انصراف",
    "بایگانی",
    "در حال تحقیق",
    "راکد",
    "سیر مطالعاتی",
    "طرح شده در هسته",
    "عدم اولویت",
    "عدم مصلحت",
  ];
  static final List<String> cVotesList = [
    "",
    'مثبت قطعی',
    'مشروط',
    'موقت',
    'عدم اولویت',
    "عدم مصلحت",
  ];
  static final List<String> userTypesList = [
    'افتخاری',
    'موظف',
    '',
  ];
}

class AzkarHafte {
  static const vazir = "Vazir";
  static const nazanin = "Nazanin";
  static const lotus = "Lotus";
  static const nastaliq = "Nastaliq";
  static const titr = "Titr";
}
