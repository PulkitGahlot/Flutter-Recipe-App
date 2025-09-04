# Meals App | Flutter Recipe Guide

A dynamic and intuitive Flutter application for discovering and organizing meal recipes. This app provides a seamless user experience for browsing meals by category, viewing detailed cooking instructions, managing a personal list of favorite meals, and filtering recipes based on dietary preferences. It serves as an excellent example of a well-structured Flutter application, effectively utilizing the Riverpod package for state management.

---

## 📋 Table of Contents

- [About The Project](#-about-the-project)
- [✨ Features](#-features)
- [🛠️ Tech Stack](#-tech-stack)
- [🏗️ Project Structure](#️-project-structure)
- [💡 Core Concepts Illustrated](#-core-concepts-illustrated)
- [🚀 Getting Started](#-getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)

---

## 📖 About The Project

The Meals App is designed to be a simple yet feature-rich mobile guide for recipes. The main screen features a tab-based navigation system allowing users to switch between meal categories and their saved favorites.

- In the **Categories** tab, users can explore various food types like 'Italian', 'Asian', and 'Quick & Easy'. Selecting a category displays a list of corresponding meals.
- In the **Favorites** tab, users can see all the meals they've marked with a star.
- From any meal list, users can tap a recipe to view a detailed screen with ingredients, step-by-step instructions, and the option to add/remove it from favorites.

A key feature is the powerful filtering system, accessible from a side drawer, which allows users to tailor the meal listings to their specific dietary needs, including gluten-free, lactose-free, vegetarian, and vegan options.

This project is built with a focus on clean code, scalability, and efficient state management using the Flutter Riverpod package.

---

## ✨ Features

-   **Tabbed Navigation:** A `BottomNavigationBar` allows easy switching between the main "Categories" screen and the "Favorites" screen.
-   **Drawer for Filters:** A `Drawer` provides access to the dedicated Filters screen without cluttering the main UI.
-   **Browse by Category:** Meals are neatly organized into categories, displayed in an animated grid layout.
-   **Detailed Meal View:** A dedicated screen for each meal shows a hero image, ingredients, and preparation steps.
-   **Favorites System:** Users can add or remove any meal from their favorites list with a single tap. The favorite status is persisted across the app.
-   **Advanced Filtering:** A dedicated filters screen allows users to apply dietary restrictions. The app dynamically updates the list of available meals based on the selected filters.
-   **State Management with Riverpod:** Leverages Riverpod for a reactive and robust state management architecture, separating business logic from the UI.
-   **Engaging UI/UX:** Incorporates multiple animations, including:
    -   `SlideTransition` for the categories screen entrance.
    -   `Hero` animations for smooth image transitions between the meals list and details screen.
    -   `AnimatedSwitcher` and `RotationTransition` for the favorite icon's state change.

---

## 🛠️ Tech Stack

-   **Framework:** [Flutter](https://flutter.dev/)
-   **Language:** [Dart](https://dart.dev/)
-   **State Management:** [Flutter Riverpod](https://riverpod.dev/)
-   **Fonts:** [Google Fonts](https://pub.dev/packages/google_fonts)
-   **Image Handling:** [transparent_image](https://pub.dev/packages/transparent_image) for fade-in image placeholders.

---

## 🏗️ Project Structure

The project is organized into a modular and easy-to-understand directory structure.

```
    lib/
    |
    |-- main.dart               # App entry point, theme setup
    |
    |-- data/
    |   |-- dummy_data.dart     # Static data for meals and categories
    |
    |-- models/
    |   |-- category.dart       # Data model for a Category
    |   |-- meal.dart           # Data model for a Meal
    |
    |-- providers/
    |   |-- favorites_provider.dart # StateNotifierProvider for favorite meals
    |   |-- filters_provider.dart   # StateNotifierProvider for filters & a computed provider for filtered meals
    |   |-- meals_provider.dart     # Simple provider for the raw meal list
    |
    |-- screens/
    |   |-- categories.dart     # Displays the grid of meal categories
    |   |-- filters.dart        # Screen for setting dietary filters
    |   |-- meal_details.dart   # Displays details for a single meal
    |   |-- meals.dart          # Displays a list of meals
    |   |-- tabs.dart           # Main screen with BottomNavigationBar and Drawer
    |
    |-- widgets/
    |   |-- category_grid_item.dart # UI for a single category item in the grid
    |   |-- main_drawer.dart        # Side drawer for navigation (to Filters screen)
    |   |-- meal_item_trait.dart    # Reusable widget for displaying meal attributes (e.g., duration)
    |   |-- meal_item.dart          # UI for a single meal in a list
```

---

---

## 💡 Core Concepts Illustrated

### State Management with Riverpod

The app showcases several powerful features of Riverpod:

-   **`Provider`**: Used in `meals_provider.dart` for providing a static, read-only list of data (`dummyMeals`).
-   **`StateNotifierProvider`**: Implemented in `favorites_provider.dart` and `filters_provider.dart` to manage mutable state. This allows the UI to react to changes, such as adding a meal to favorites or toggling a filter.
-   **Computed/Combined Providers**: The `filteredMealsProvider` in `filters_provider.dart` is a brilliant example of a computed provider. It `watch`es both the `mealsProvider` and the `filtersProvider`. Whenever the active filters change, this provider automatically re-evaluates and returns a new, filtered list of meals, which the UI then displays.

### Navigation & UI

-   **Tab-Based Layout**: The main `TabsScreen` uses a `BottomNavigationBar` to manage the two primary user-facing screens.
-   **Hero Animations**: The `Hero` widget is used in `meal_item.dart` and `meal_details.dart` to create a beautiful and seamless transition. The meal image appears to fly from the list screen to the details screen, providing a professional feel.
-   **Reusable Widgets**: Components like `MealItem` and `MealItemTrait` are designed to be reusable, promoting a clean and DRY (Don't Repeat Yourself) codebase.

---

## 🚀 Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

Ensure you have the Flutter SDK installed on your machine. For installation instructions, see the [official Flutter documentation](https://flutter.dev/docs/get-started/install).

### Installation

1.  **Clone the repository:**
    ```sh
    git clone [https://github.com/your_username/meals-app.git](https://github.com/your_username/meals-app.git)
    ```
2.  **Navigate to the project directory:**
    ```sh
    cd meals-app
    ```
3.  **Install dependencies:**
    ```sh
    flutter pub get
    ```
4.  **Run the app:**
    ```sh
    flutter run
    ```

---

---

## Download the app & begin Cooking some Delicious Meals

- [Meals App | Flutter Recipe Guide]()

Or just scan the QR Code for a direct download.


## 👨‍💻 Author

Hi, I'm **Pulkit Gahlot**, a cyber security enthusiast and passionate to be an ethical hacker with a knack of Application development using Flutter and Dart.

“A good hacker is the one who breaks systems, to build secure ones.”

Feel free to connect!
- **Linkedin**: [Pulkit Gahlot](https://linkedin.com/in/pulkit-gahlot)
- **X**: [Pulkit_Gahlot_](https://x.com/Pulkit_Gahlot_)
- **GitHub**: [PulkitGahlot](https://github.com/PulkitGahlot)
- **E-Mail**: [pulkitgahlot85@gmail.com](pulkitgahlot85@gmail.com)
