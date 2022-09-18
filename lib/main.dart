// import 'package:flutter/material.dart';
// //import 'package:lab8_2/quote.dart';
// import 'quote.dart'; // due to same directory file no need path
//
// void main() => runApp(MaterialApp(
//   home: EchoList(),
// ));
// class EchoList extends StatefulWidget {
//   const EchoList({Key? key}) : super(key: key);
//   @override
//   State<EchoList> createState() => _EchoListState();
// }
// class _EchoListState extends State<EchoList> {
//
//   List<Quote> quotes = [
//     Quote(text: 'The truth is realy pure and never simple',author:
//     'someone wise'),
//
//     Quote(author: 'jignesh2', text: 'I see humans but no humanity'),
//     Quote(text: 'The time is always right to do what is right',author:
//     'unknown'),
//   ];
//   Widget quoteTemplate(quote){
//     return QuoteCard();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightBlueAccent[100],
//       appBar: AppBar(
//         title: Text('Quotes'),
//         centerTitle: true,
//         backgroundColor: Colors.orangeAccent,
//       ),
//       body: Column(
// // mainAxisAlignment: MainAxisAlignment.center,
// // crossAxisAlignment: CrossAxisAlignment.center,
//         children: quotes.map((quote) => quoteTemplate(quote)).toList(),
//       ),
//     );
//   }
// }
//
// class QuoteCard extends StatelessWidget {
//   const QuoteCard({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               quote.text,
//               style: TextStyle(
//                 fontSize: 20,
//
//                 color: Colors.deepPurple,
//
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               quote.author,
//               style: TextStyle(
//                 fontSize: 26,
//
//                 color: Colors.deepPurple,
//
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
void main(){
  runApp(MaterialApp(
      home:EchoList()
  ));
}

class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);

  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {
  // List<String> quotes = [
  //   'The truth is realy pure and never simple',
  //   'The purpose of our life is to be happy',
  //   'The time is always right to do what is right'
  // ];

  List<Quote> quotes = [
    Quote(text: 'The truth is realy pure and never simple', author: 'Meet'),
    Quote(author: 'Meet', text: 'The purpose of our life is to be happy'),
    Quote(text: 'The time is always right to do what is right', author: 'meet'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[100],
      appBar: AppBar(
        title: Text('Quotes'),
        backgroundColor: Colors.green[500],
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote,
          delete: ()  {
            setState(() {
              quotes.remove(quote);
            });
          },
        )).toList(),
      ),
    );
  }
}










