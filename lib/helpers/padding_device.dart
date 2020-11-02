import 'package:flutter/foundation.dart' show kIsWeb;

class PaddingDevice {
  static double getPaddingValue() {
    return kIsWeb ? 32.0 : 8.0;
  }
}
