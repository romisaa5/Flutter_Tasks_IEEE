# Expenzo App 💸

**Expenzo** is a simple and clean expense tracking app built using **Flutter**.  
It allows users to manage their daily transactions by adding, editing, and deleting them locally.

---

## ✨ Features

- ✅ **Splash Screen** to introduce the app  
- ✅ **Onboarding Screens** to guide new users through the app's purpose and flow  
- ✅ **Persistent Onboarding State** using `SharedPreferences`  
- ✅ **Local Database** using `Sqflite` to store transactions offline  
- ✅ **Add / Edit / Delete** transactions  
- ✅ **State Management** using `Cubit`  
- ✅ **Monthly Filter**: View all transactions based on the selected month  
- ✅ **Total Monthly Spending**: Automatically shows how much you spent during the selected month

---

## 📦 Packages Used

- [`flutter_bloc`](https://pub.dev/packages/flutter_bloc) — state management with Cubit  
- [`sqflite`](https://pub.dev/packages/sqflite) — local database  
- [`shared_preferences`](https://pub.dev/packages/shared_preferences) — to persist onboarding state  
- [`flutter_slidable`](https://pub.dev/packages/flutter_slidable) — swipe-to-edit/delete  
- [`intl`](https://pub.dev/packages/intl) — for date formatting and parsing


---

## 📊 How It Works

- 🧠 **Cubit** handles all transaction logic (add, edit, delete, filter, total).
- 🗓️ The app filters your expenses based on the **selected month**.
- 💰 It automatically calculates your **Total Spending** for the selected month.
- 🔁 You can **swipe** to edit or delete any transaction.

---

## 🚀 Getting Started

```bash

git clone https://github.com/romisaa5/Flutter_Tasks_IEEE.git
cd week 10/expenzo_app
flutter pub get
flutter run

