bool minLenghtValidation(String value, int minLenght) {
  if (value.length >= minLenght) {
    return true;
  } else {
    return true;
  }
}

bool validEmail(String value) {
  bool validEmail = RegExp(
          r"/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/")
      .hasMatch(value);
  return validEmail;
}
