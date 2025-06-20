extension Validator on String? {
  bool isValidEmail() {
    return RegExp(
      r'^([a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,})$',
    ).hasMatch(this ?? "");
  }

  bool isValidIqamaNumber() {
    if (this!.length != 10 || !RegExp(r'^\d{10}$').hasMatch(this!)) {
      return false;
    }
    if (_isSequential(this!)) {
      return false;
    }
    if (!(this!.startsWith('1') || this!.startsWith('2'))) {
      return false;
    }
    return true;
  }

  bool _isSequential(String id) {
    bool isIncreasing = true;
    bool isDecreasing = true;
    for (int i = 0; i < id.length - 1; i++) {
      if (int.parse(id[i + 1]) != int.parse(id[i]) + 1) {
        isIncreasing = false;
      }
      if (int.parse(id[i + 1]) != int.parse(id[i]) - 1) {
        isDecreasing = false;
      }
    }
    return isIncreasing || isDecreasing;
  }

  String capitalizeFirstCharacter() {
    String value = this ?? "";
    if (value.isNotEmpty) {
      return "${value[0].toUpperCase()}${value.substring(1).toLowerCase()}";
    } else {
      return "";
    }
  }
}

class AppValidation {
  static bool isValidString(
    String? input, {
    List<String> forbiddenWords = const ['null', 'undefined', 'unknown'],
  }) {
    if (input == null ||
        input.isEmpty ||
        forbiddenWords.contains(input.trim().toLowerCase())) {
      return false;
    }
    return true;
  }
}
