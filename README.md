# Responsive Login Page with Firebase Authentication

## Introduction
This Flutter project features a responsive login page integrated with Firebase for authentication. The application supports Google and Facebook authentication, making it easy for users to sign in using their preferred method.

## Features
- Responsive design for various screen sizes.
- Firebase authentication integration.
- Support for Google and Facebook authentication.
- Simple and clean UI design.

## Installation
1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/ResponsiveLoginPage.git
    ```
2. Navigate to the project directory:
    ```bash
    cd ResponsiveLoginPage
    ```
3. Install the dependencies:
    ```bash
    flutter pub get
    ```

## Firebase Setup
1. Go to the [Firebase Console](https://console.firebase.google.com/).
2. Create a new project or use an existing one.
3. Add an Android and iOS app to your Firebase project.
4. Download the `google-services.json` file for Android and place it in the `android/app` directory.
5. Download the `GoogleService-Info.plist` file for iOS and place it in the `ios/Runner` directory.
6. Enable Google and Facebook authentication in the Firebase Console.

## Google Authentication Setup
1. Follow the instructions in the [Firebase documentation](https://firebase.google.com/docs/auth/flutter/google-signin) to configure Google authentication.

## Facebook Authentication Setup
1. Follow the instructions in the [Firebase documentation](https://firebase.google.com/docs/auth/flutter/facebook-login) to configure Facebook authentication.

## Usage
1. Run the application:
    ```bash
    flutter run
    ```
2. Use the login page to:
    - Sign in with email and password.
    - Sign in with Google.
    - Sign in with Facebook.

## Example
1. Launch the app on your device.
2. On the login page, you can choose to:
    - Enter your email and password and click "Login".
    - Click the "Login with Google" button to sign in using your Google account.
    - Click the "Login with Facebook" button to sign in using your Facebook account.

## Contributing
Contributions are welcome! Please fork the repository and create a pull request with your changes.


