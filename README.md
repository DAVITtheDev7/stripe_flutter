# stripe_flutter

A Flutter app demonstrating Stripe payment integration using the `flutter_stripe` package and `dio` for API requests.

This project uses Riverpod for state management and features a simple payment page to test Stripe Payment Sheets.

---

## Features

- Initialize and present Stripe Payment Sheet
- Create PaymentIntents via Stripe API (currently called directly in the app for testing)
- Riverpod-based service architecture
- Basic UI for triggering payments
- Secure key management recommended (secret keys are excluded from the repo)

---

## Getting Started

This project is a starting point for integrating Stripe payments in Flutter.

If you're new to Flutter, here are some useful resources:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For Flutter development help and documentation:

- [Flutter Documentation](https://docs.flutter.dev/)

---

## Setup

1. Clone the repo.

2. Add your Stripe publishable key in `lib/core/secret/stripe_key.dart` (make sure this file is in `.gitignore`):

```dart
String publishableKey = "pk_test_XXXXXXXXXXXXXXXXXXXXXXXX";
