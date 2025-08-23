# 🍲 Food Recipe App  

## 📖 Overview  
The **Food Recipe App** is a Flutter application that allows users to explore recipes, view recipe details, and save their favorite recipes locally using **SQLite**.  
The app integrates with the **[TheMealDB API](https://www.themealdb.com/api.php)** for fetching recipes and details.  
Networking is handled using **Dio** for efficient API communication.  

---

## 🚀 Features  
### 🔹 First Screen: Recipes List  
- Displays a list of recipes fetched from **TheMealDB API**.  
- Includes **Category Filters** to filter recipes by type (e.g., Chicken, Dessert, Vegetarian, etc.).  
- When the user taps on a recipe, the app navigates to the **Recipe Details** screen.  

### 🔹 Second Screen: Recipe Details  
- Shows full recipe details such as:  
  - Recipe name  
  - Instructions  
  - Ingredients and measurements  
  - Recipe image  
- Provides a **"Favorite" button** that allows the user to save recipes to **SQLite** for offline access.  

### 🔹 Third Screen: Favorite Recipes  
- Displays a list of recipes saved as favorites in **SQLite**.  
- Clicking on a recipe navigates back to the **Recipe Details** screen.  

### 🔹 Navigation  
- Implemented using **BottomNavigationBar** with two main tabs:  
  - 🏠 Home → Recipes List  
  - ❤️ Favorites → Favorite Recipes List  

---

## 🛠️ Tech Stack  
- **Flutter** (UI)  
- **Dio** (Networking)  
- **SQLite** (Local Database for Favorites)  
- **TheMealDB API** (Recipes Data Source)  

---

## 📂 Project Structure  
```bash
lib/
│── core/   # App colors, styles, utils  
│── features/          
│   ├── home/ # Recipes list UI + cubit   
│   ├── favorites/ # Favorites list UI + SQLite logic  
│── main.dart # Entry point
```
---


<div align="center">
  <video src="https://github.com/user-attachments/assets/611d2b1d-0859-4509-a515-b784aa1fb8ec" controls width="480" style="border-radius: 12px;"></video>
</div>

---

## 📚 Resources
- [TheMealDB API Docs](https://www.themealdb.com/api.php)  
- [Dio Documentation](https://pub.dev/packages/dio)  
- [SQLite in Flutter](https://docs.flutter.dev/cookbook/persistence/sqlite)  
- [Async Programming in Dart](https://dart.dev/codelabs/async-await)  

---
