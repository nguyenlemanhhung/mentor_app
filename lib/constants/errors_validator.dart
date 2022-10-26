final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Vui lòng nhập email của bạn !";
const String kInvalidEmailError = "Vui lòng nhập email hợp lệ !";
// const String kInvalidEmailError = "Vui lòng nhập email hợp lệ !";
// const String kInvalidEmailError = "Vui lòng nhập email hợp lệ !";
// const String kInvalidEmailError = "Vui lòng nhập email hợp lệ !";
// const String kInvalidEmailError = "Vui lòng nhập email hợp lệ !";
// const String kInvalidEmailError = "Vui lòng nhập email hợp lệ !";
// const String kInvalidEmailError = "Vui lòng nhập email hợp lệ !";
// const String kInvalidEmailError = "Vui lòng nhập email hợp lệ !";
const String kPassNullError = "Vui lòng nhập mật khẩu của bạn !";
const String kShortPassError = "Mật khẩu phải từ 8 ký tự trở lên";

// password
final hasDigitsReg = RegExp(r'[0-9]');
final hasLowerCaseReg = RegExp(r'[a-z]');
final hasUpperCaseReg = RegExp(r'[A-Z]');
final hasSpecialCharReg = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
final noSpacesReg = RegExp(r' ');
