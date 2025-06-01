# My Resume (Flutter Web)

Welcome to my personal resume website — built entirely with [Flutter Web](https://flutter.dev/web).  
Deployed via GitHub Pages:  
👉 [View Live](https://erfanh3h.github.io/resume/)

---

## 🚀 Features

- Fully responsive layout (desktop & mobile)
- Clean and minimal design
- Built with Dart and Flutter
- Deployed on GitHub Pages

---

## 🛠️ Getting Started

To run this project locally:

```bash
git clone https://github.com/erfanh3h/resume.git
cd resume
flutter pub get
flutter run -d chrome
```

---

## 🌐 Deployment

To rebuild for web and deploy manually:

```bash
flutter build web --release --base-href /resume/
```

Then push the contents of the `build/web` folder to your GitHub repo.

---

## 📁 Folder Structure

```
/lib          → Main Flutter code
├── Bindings → GetX bindings for dependency injection
├── Controllers → GetX controllers (logic layer)
├── Data → Local or remote data sources (e.g., services, APIs)
├── Models → Data models and entities
├── Resources → Static resources (fonts, colors, images)
├── Utils → Utility functions, extensions, helpers
├── Widgets → Reusable custom widgets
├── main.dart → Entry point of the app
└── main_page.dart → Main page UI
/web          → Web entry point and index.html
/assets       → Static assets (images, fonts)
```

---

## 📸 Screenshots

<!-- > _Add a screenshot of your resume here for better preview!_ -->

---

## 📄 License

This project is open-source under the MIT License.  
Feel free to use it as a template for your own online resume.

---

## 👤 Author

**Erfan H3H**  
[GitHub](https://github.com/erfanh3h) • [LinkedIn](https://www.linkedin.com/in/erfanhayatbakhsh/)
