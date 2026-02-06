abstract class StringUtils {
  static String makeFullname(
    String firstName,
    String lastName,
    String secondName,
  ) {
    String fullname = '';
    if (firstName.trim().isNotEmpty) {
      fullname = '$fullname${firstName.trim()}';
    }
    if (secondName.trim().isNotEmpty) {
      if (fullname.isNotEmpty) {
        fullname = '$fullname ';
      }
      fullname = '$fullname${secondName.trim()}';
    }
    if (lastName.trim().isNotEmpty) {
      if (fullname.isNotEmpty) {
        fullname = '$fullname ';
      }
      fullname = '$fullname${lastName.trim()}';
    }

    return fullname;
  }

  static String makeAddress({
    String cityStreet = '',
    String building = '',
    String flat = '',
    String floor = '',
  }) {
    String address = '';
    if (cityStreet.trim().isNotEmpty) {
      address = cityStreet.trim();
    }
    if (building.trim().isNotEmpty) {
      if (address.isNotEmpty) {
        address = '$address, ';
      }
      address = '${address}дом ${building.trim()}';
    }
    if (flat.trim().isNotEmpty) {
      if (address.isNotEmpty) {
        address = '$address, ';
      }
      address = '${address} ${flat.trim()}';
    }
    if (floor.trim().isNotEmpty) {
      if (address.isNotEmpty) {
        address = '$address, ';
      }
      address = '${address}этаж ${floor.trim()}';
    }

    return address;
  }

  static String formatPhoneNumber(String input) {
    final digits = input.replaceAll(RegExp(r'\D'), '');

    String body = digits;
    if (digits.startsWith('8') || digits.startsWith('7')) {
      body = digits.substring(1);
    }

    if (body.length != 10) return input;

    final buffer = StringBuffer();
    buffer.write('+7 ');
    buffer.write('(${body.substring(0, 3)}) ');
    buffer.write('${body.substring(3, 6)}-');
    buffer.write('${body.substring(6, 8)}-');
    buffer.write('${body.substring(8, 10)}');

    return buffer.toString();
  }
}
