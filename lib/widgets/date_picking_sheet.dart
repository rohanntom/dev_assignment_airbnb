// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class DatePickingSheet extends StatefulWidget {
//   const DatePickingSheet({Key? key}) : super(key: key);

//   @override
//   State<DatePickingSheet> createState() => _DatePickingSheetState();
// }

// class _DatePickingSheetState extends State<DatePickingSheet> {
//   late DateTime _selectedDate;
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();

//   void _presentDatePicker() {
//     showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(2021),
//       lastDate: DateTime.now(),
//     ).then((pickedDate) {
//       if (pickedDate == null) {
//         return;
//       }
//       setState(() {
//         _selectedDate = pickedDate;
//       });
//     });
//   }

//   Widget _dateFormat() {
//     return Container(
//       height: 70,
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: Text(
//               _selectedDate == null
//                   ? 'No Date Chosen!'
//                   : 'Picked Date: ${DateFormat.yMd().format(_selectedDate)}',
//             ),
//           ),
//           //AdaptiveFlatButton('Choose Date', _presentDatePicker)
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Card(
//         elevation: 5,
//         child: Container(
//           padding: EdgeInsets.only(
//             top: 10,
//             left: 10,
//             right: 10,
//             bottom: MediaQuery.of(context).viewInsets.bottom + 10,
//           ),
//           child: Form(
//             key: formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: <Widget>[
//                 _dateFormat(),
//                 RaisedButton(
//                     child: Text('Confirm'),
//                     color: Theme.of(context).primaryColor,
//                     textColor: Colors.pink,
//                     onPressed: () {}),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
