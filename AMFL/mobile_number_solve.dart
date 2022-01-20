// employeeInfoResponse.user[index].officeMobile

void main() {
  String mobile = '8801833167938';

  if (mobile.isNotEmpty) {
    if (mobile.substring(0, 2) == '88')
      // String number = mobile.substring(2,3);
      print(mobile.substring(2, mobile.length));
    else
      print("not in formate");
  } else
    print("Your number is empty!");
}
