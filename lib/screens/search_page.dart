import 'package:course_project/constants/color.dart';
import 'package:course_project/screens/info_screen.dart';
import 'package:course_project/screens/info_screen2.dart';
import 'package:course_project/screens/info_screen3.dart';
import 'package:course_project/screens/info_screen4.dart';
import 'package:course_project/screens/info_screen6.dart';
import 'package:course_project/screens/info_screen7.dart';
import 'package:course_project/screens/info_screen8.dart';
import 'package:course_project/screens/see_all_page.dart';
import 'package:course_project/widgets/auth_repo.dart';
import 'package:course_project/widgets/card2_view_list.dart';
import 'package:course_project/widgets/card_view_list.dart';

import 'package:flutter/material.dart';

import 'info_screen5.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: GNav(tabs: [
      //   GButton(icon: Icons.access_alarm),
      //   GButton(icon: Icons.access_alarm),
      //   GButton(icon: Icons.access_alarm),
      //   GButton(icon: Icons.access_alarm),
      // ]),
      backgroundColor: Pallete.mainBg,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      // shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.article_outlined,
                        size: 25,
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                    child: GestureDetector(
                      onTap: () {
                        AuthenticationRepo.instance.logout();
                      },
                      child: const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/avatar.png'),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Find your\ncreative course..',
                      style: TextStyle(
                        fontFamily: 'Cera Pro',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular Courses',
                    style: TextStyle(
                      fontFamily: 'Cera Pro',
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const SeeAllScreen()),
                      );
                    },
                    child: const Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Cera Pro',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardViewList(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const InfoPage()),
                        );
                      },
                      textColor: Colors.white,
                      titletext: 'Udemy',
                      location: 'USA',
                      price: '\$150',
                      timeOfCourse: '4 Months',
                      subTitleText: 'Flutter Advance Development',
                      colorContainer: Pallete.secondaryBg,
                      imagePlace: 'assets/images/udemy-2.png',
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const InfoPage2()),
                        );
                      },
                      child: const CardViewList(
                        textColor: Colors.black,
                        titletext: 'Coursera',
                        location: 'USA',
                        price: '\$250',
                        timeOfCourse: '8 Months',
                        subTitleText: 'Python Advance Development',
                        colorContainer: Pallete.cardColor2,
                        imagePlace: 'assets/images/coursera-3.png',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const InfoPage3()),
                        );
                      },
                      child: const CardViewList(
                        textColor: Colors.white,
                        titletext: 'Google',
                        location: 'USA',
                        price: '\$550',
                        timeOfCourse: '12 Months',
                        subTitleText: 'Dotnet Advanced Development',
                        colorContainer: Pallete.secondaryBg,
                        imagePlace: 'assets/images/google-4.png',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recently Added',
                    style: TextStyle(
                      fontFamily: 'Cera Pro',
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const SeeAllScreen()),
                      );
                    },
                    child: const Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Cera Pro',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const InfoPage4()),
                      );
                    },
                    child: const Card2List(
                      titleText: 'UI/UX Development',
                      subtitleText: '6 Months',
                      rateOfCourse: '\$100',
                      containerColor: Pallete.cardColor2,
                      imagePlace: 'assets/images/coursera.png',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const InfoPage5()),
                      );
                    },
                    child: const Card2List(
                      titleText: 'Java Advanced',
                      subtitleText: '12 Months',
                      rateOfCourse: '\$150',
                      containerColor: Pallete.cardColor2,
                      imagePlace: 'assets/images/udemy-2.png',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const InfoPage6()),
                      );
                    },
                    child: const Card2List(
                      titleText: 'Android Development',
                      subtitleText: '3 Months',
                      rateOfCourse: '\$120',
                      containerColor: Pallete.cardColor2,
                      imagePlace: 'assets/images/ibm.png',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const InfoPage7()),
                      );
                    },
                    child: const Card2List(
                      titleText: 'Web Development',
                      subtitleText: '8-10 Months',
                      rateOfCourse: '\$200',
                      containerColor: Pallete.cardColor2,
                      imagePlace: 'assets/images/tcs.png',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const InfoPage8()),
                      );
                    },
                    child: const Card2List(
                      titleText: 'goLang Development',
                      subtitleText: '12 Months',
                      rateOfCourse: '\$400',
                      containerColor: Pallete.cardColor2,
                      imagePlace: 'assets/images/google-5.png',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//  appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Pallete.mainBg,
//         leading: Padding(
//           padding: const EdgeInsets.only(left: 50.0),
//           child: Container(
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   color: Colors.grey,
//                 ),
//                 shape: BoxShape.rectangle,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: const Icon(
//                 Icons.menu_book_rounded,
//                 color: Colors.black,
//               )),
//         ),
//       ),

// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:notes_app/Constants/colors.dart';
// import 'package:notes_app/Screens/edit_Screen.dart';
// import 'package:notes_app/models/note.dart';
// import 'dart:math';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   List<Note> filteredNotes = [];
//   bool sorted = false;

//   @override
//   void initState() {
//     super.initState();
//     filteredNotes = sampleNotes;
//   }

//   List<Note> sortNotesByModifiedTime(List<Note> notes) {
//     if (sorted) {
//       notes.sort((a, b) => a.modifiedTime.compareTo(b.modifiedTime));
//     } else {
//       notes.sort((b, a) => b.modifiedTime.compareTo(a.modifiedTime));
//     }

//     sorted = !sorted;
//     return notes;
//   }

//   getRandomColor() {
//     Random random = Random();
//     return backgroundColors[random.nextInt(backgroundColors.length)];
//   }

//   void onSearchTextChange(String searchText) {
//     setState(() {
//       filteredNotes = sampleNotes
//           .where((note) =>
//               note.content.toLowerCase().contains(searchText.toLowerCase()) ||
//               note.title.toLowerCase().contains(searchText.toLowerCase()))
//           .toList();
//     });
//   }
// //   }This code snippet appears to be a function in Dart programming language. It takes a string searchText as input and filters a list of notes (sampleNotes) based on whether the content or title of each note contains the searchText.

// // The where() method is used to filter the notes based on the condition provided inside the parentheses. The condition is checking if either the content or title of each note contains the searchText, using the contains() method. The toLowerCase() method is used to convert both the searchText and the content/title of each note to lowercase before performing the comparison, so that the search is case insensitive. Finally, the filtered list is returned as a new list using the toList() method.
//   void deleteNote(int index) {
//     setState(() {
//       Note note = filteredNotes[index];
//       sampleNotes.remove(note);
//       filteredNotes.removeAt(index);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade900,
//       body: Padding(
//         padding: const EdgeInsets.fromLTRB(20, 55, 20, 0),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   'Notes',
//                   style: TextStyle(
//                     fontSize: 30,
//                     color: Colors.white,
//                   ),
//                 ),
//                 IconButton(
//                     padding: const EdgeInsets.all(0),
//                     onPressed: () {
//                       setState(() {
//                         filteredNotes = sortNotesByModifiedTime(filteredNotes);
//                       });
//                     },
//                     icon: Container(
//                       width: 40,
//                       height: 40,
//                       decoration: BoxDecoration(
//                         color: Colors.grey.shade700.withOpacity(.8),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: const Icon(
//                         Icons.sort,
//                         color: Colors.white,
//                       ),
//                     ))
//               ],
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             TextField(
//               onChanged: onSearchTextChange,
//               style: const TextStyle(fontSize: 15, color: Colors.white),
//               decoration: InputDecoration(
//                 contentPadding: const EdgeInsets.symmetric(vertical: 12),
//                 hintText: "Search For Notes...",
//                 hintStyle: const TextStyle(color: Colors.grey),
//                 prefixIcon: const Icon(
//                   Icons.search,
//                   color: Colors.grey,
//                 ),
//                 fillColor: Colors.grey.shade800,
//                 filled: true,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 // focusedBorder: OutlineInputBorder(
//                 //   borderRadius: BorderRadius.circular(30),
//                 // ),
//                 // enabledBorder: OutlineInputBorder(
//                 //   borderRadius: BorderRadius.circular(30),
//                 // ),
//               ),
//             ),
//             Expanded(
//                 child: ListView.builder(
//               padding: const EdgeInsets.only(top: 30),
//               itemCount: filteredNotes.length,
//               itemBuilder: (context, index) {
//                 return Card(
//                   margin: EdgeInsets.only(bottom: 23),
//                   color: getRandomColor(),
//                   elevation: 3,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12)),
//                   child: Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: ListTile(
//                       onTap: () async {
//                         final result = await Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (BuildContext context) =>
//                                   const EditScreen()),
//                         );
//                       },
//                       title: RichText(
//                         maxLines: 3,
//                         overflow: TextOverflow.ellipsis,
//                         text: TextSpan(
//                             text: '${filteredNotes[index].title}\n',
//                             style: const TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.normal,
//                                 fontSize: 18,
//                                 height: 1.5),
//                             children: [
//                               TextSpan(
//                                 text: sampleNotes[index].content,
//                                 style: const TextStyle(
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.normal,
//                                     fontSize: 14,
//                                     height: 1.5),
//                               )
//                             ]),
//                       ),
//                       subtitle: Padding(
//                         padding: const EdgeInsets.only(top: 9),
//                         child: Text(
//                           'Edited: ${DateFormat('EEE MMM d, yyyy h:mm a').format(sampleNotes[index].modifiedTime)}',
//                           style: TextStyle(
//                             fontSize: 10,
//                             fontStyle: FontStyle.italic,
//                             color: Colors.grey.shade800,
//                           ),
//                         ),
//                       ),
//                       trailing: IconButton(
//                         onPressed: () async {
//                           final result = await showDialog(
//                               context: context,
//                               builder: (BuildContext context) {
//                                 return AlertDialog(
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   backgroundColor: Colors.grey.shade900,
//                                   icon: const Icon(
//                                     Icons.info,
//                                     color: Colors.grey,
//                                   ),
//                                   title: const Text(
//                                     'Are you sure you want to delete?',
//                                     style: TextStyle(color: Colors.white),
//                                   ),
//                                   content: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceAround,
//                                     children: [
//                                       ElevatedButton(
//                                         onPressed: () {
//                                           Navigator.pop(context, true);
//                                         },
//                                         style: ElevatedButton.styleFrom(
//                                             backgroundColor: Colors.green),
//                                         child: const SizedBox(
//                                           width: 60,
//                                           child: Text(
//                                             'Yes',
//                                             textAlign: TextAlign.center,
//                                             style:
//                                                 TextStyle(color: Colors.white),
//                                           ),
//                                         ),
//                                       ),
//                                       ElevatedButton(
//                                         onPressed: () {
//                                           Navigator.pop(
//                                             context,
//                                           );
//                                         },
//                                         style: ElevatedButton.styleFrom(
//                                             backgroundColor: Colors.red),
//                                         child: const SizedBox(
//                                           width: 60,
//                                           child: Text(
//                                             'No',
//                                             textAlign: TextAlign.center,
//                                             style:
//                                                 TextStyle(color: Colors.white),
//                                           ),
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 );
//                               });
//                           if (result != null && result) {
//                             deleteNote(index);
//                           }
//                         },
//                         icon: Icon(Icons.delete),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             )),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.grey.shade700.withOpacity(.8),
//         elevation: 10,
//         onPressed: () async {
//           final result = await Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (BuildContext context) => const EditScreen()),
//           );
//           if (result != null) {
//             setState(() {
//               sampleNotes.add(Note(
//                   id: sampleNotes.length,
//                   title: result[0],
//                   content: result[1],
//                   modifiedTime: DateTime.now()));
//               filteredNotes = sampleNotes;
//             });
//           }
//         },
//         child: const Icon(
//           Icons.add,
//           size: 35,
//         ),
//       ),
//     );
//   }
// }
