# Project Blueprint: MEXC Alwaly Trading Bot

## 1. Project Overview

This document outlines the architecture, features, and development plan for the "MEXC-alwaly-BOT" project. The goal is to create a sophisticated, cloud-based algorithmic trading bot for the MEXC exchange, controlled by a Flutter mobile application.

## 2. Core Features & Architecture

*   **Frontend (Controller):** A Flutter application for Android providing the user interface for login, settings, and real-time monitoring.
*   **Backend (Trader):** A serverless backend using Google Cloud Functions for continuous, 24/7 operation. This backend will house the core trading logic, interact with the MEXC API, and manage data.
*   **Database:** Cloud Firestore for real-time data synchronization between the backend and the app, storing user data, trade history, and logs.
*   **Authentication:** Firebase Authentication for secure user login and password management.
*   **API Integration:** Secure connection to the MEXC exchange API for market data and trade execution. API keys will be stored securely using device-side secure storage and server-side secret management.

## 3. Phase 1: UI Foundation & Structure (Completed)

This phase focused on building the foundational user interface shell and setting up the project structure.

**Achievements:**

*   Added `google_fonts`, `provider`, and `go_router` dependencies.
*   Organized the `lib` folder with a scalable structure.
*   Implemented a professional dark theme using Material 3 principles.
*   Set up app navigation between the login, dashboard, and settings screens.
*   Built static, visually appealing UI for all primary screens.

## 4. Current Development Plan: Phase 2 - Firebase Auth & Login Logic

This phase will integrate Firebase Authentication to bring the login screen to life, enabling secure user sign-in and sign-up.

**Steps for this Phase:**

1.  **Add Firebase Dependencies:** Add `firebase_core` and `firebase_auth` to the `pubspec.yaml` file.
2.  **Initialize Firebase:** Configure the Firebase project and initialize it within the Flutter app.
3.  **Create Authentication Service:** Build a dedicated service class (`auth_service.dart`) to encapsulate all Firebase Authentication logic (e.g., `signInWithEmail`, `signUp`, `signOut`, `authStateChanges`).
4.  **Integrate with UI:**
    *   Update the `LoginScreen` to use `TextEditingController`s to capture user input.
    *   Connect the login and sign-up buttons to the `AuthService`.
    *   Implement an authentication state listener in `main.dart` that automatically navigates the user to the dashboard upon successful login, and to the login screen upon logout.
5.  **Develop Registration Flow:** Add functionality for new users to create an account.

---
*This blueprint will be updated as we complete each phase and move on to the next.*
