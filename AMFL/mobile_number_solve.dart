// employeeInfoResponse.user[index].officeMobile

void main() {
  String mobile = '8801670871257';

  // if (mobile.isNotEmpty) {
  //   if (mobile.substring(0, 2) == '88')
  //     // String number = mobile.substring(2,3);
  //     print(mobile.substring(2, mobile.length));
  //   else
  //     print("not in formate");
  // } else
  //   print("Your number is empty!");

  // new way
  CallAndMessage().callAndMessage(mobile, Launch.CALL);
  CallAndMessage().callAndMessage(mobile, Launch.MESSAGE);
}

enum Launch { CALL, MESSAGE, O }

class CallAndMessage {
  callAndMessage(String mobile, Launch value) {
    if (mobile.isNotEmpty) {
      if (mobile.substring(0, 2) == '88') {
        lunchCallOrMessage(mobile.substring(2, mobile.length), value);
      } else {
        lunchCallOrMessage(mobile, value);
      }
    } else if (value == Launch.CALL || value == Launch.MESSAGE)
      print('Number is empty!');
    else
      print('Something Wrong Happen!');
  }

  lunchCallOrMessage(String mobile, Launch value) {
    if (value == Launch.CALL) {
      print("tel:${mobile.trim()}");
      print('Call');
    } else if (value == Launch.MESSAGE) {
      print("sms:${mobile.trim()}");
      print('Message');
    }
  }
  // lunchCallOrMessage(mobile.substring(2, mobile.length), value);

}
