// import 'package:flutter/material.dart';

// class ListViewDemo extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return ListViewDemoState();
//   }
// }

// class ListViewDemoState extends State<ListViewDemo> {
//   List<String> selectedItemValue = [];

//   List<String> ddl = ["NONE", "1 YEAR", "2 YEAR"];
//   int count = 1;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("ListView"),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(18.0),
//           child: Column(
//             children: <Widget>[
//               Expanded(
//                 child: ListView.builder(
//                     itemCount: count,
//                     itemExtent: 50.0,
//                     itemBuilder: (BuildContext context, int index) {
//                       // for (int i = 0; i < 3; i++) {
//                       selectedItemValue.add("NONE");

//                       return DropdownButton(
//                         value: selectedItemValue[index].toString(),
//                         items: _dropDownItem(ddl),
//                         onChanged: (value) {
//                           selectedItemValue[index] = value.toString();
//                           setState(() {
//                             // ddl  = [];
//                             // ddl = ["NONE", "5 YEAR", "6 YEAR"];
//                             print("INDEX: " + index.toString());
//                             count = index + 2;
//                           });
//                         },
//                         hint: const Text('Select Gender'),
//                       );
//                     }),
//               )
//             ],
//           ),
//         ));
//   }
// }

// List<DropdownMenuItem<String>> _dropDownItem(List<String> strings) {
//   return strings
//       .map(
//         (value) => DropdownMenuItem(
//           value: value,
//           child: Text(value),
//         ),
//       )
//       .toList();
// }
