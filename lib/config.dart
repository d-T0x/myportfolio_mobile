import 'package:flutter/foundation.dart';

/// Base URL of the Django REST Framework backend.
///
/// The Flutter web server runs on port 8080, so web requests go to Django on
/// port 8000. Android emulators reach the host machine through 10.0.2.2.
const String apiBaseUrl = String.fromEnvironment(
  'API_BASE_URL',
  defaultValue: kIsWeb ? 'http://localhost:8000' : 'http://10.0.2.2:8000',
);
