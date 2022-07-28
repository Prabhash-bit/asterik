import 'package:flutter/material.dart';
import 'map_integration.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController name = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController homeaddress = TextEditingController();
  TextEditingController education = TextEditingController();
  TextEditingController collegename = TextEditingController();
  TextEditingController collegeaddress = TextEditingController();

  void _sendDataToSecondScreen(BuildContext context) {
    String _name = name.text;
    String _dob = dob.text;
    String _gender = gender.text;
    String _homeaddress = homeaddress.text;
    String _education = education.text;
    String _collegename = collegename.text;
    String _collegeaddress = collegeaddress.text;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => InfoPage(
            name_text: _name,
            dob_text: _dob,
            gender_text: _gender,
            homeaddress_text: _homeaddress,
            education_text: _education,
            college_text: _collegename,
            collegeaddress_text: _collegeaddress,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xFF96D8FB),
            appBar: AppBar(
              elevation: 10.0,
              centerTitle: true,
              automaticallyImplyLeading: false,
              backgroundColor: const Color(0xFF0C65A1),
              title: const Text(
                'Demo Form- Page 1',
              ),
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.only(right: 2.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Name:",
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 15.0),
                        ),
                        // Spacer(
                        //   flex: 1,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 7.0, right: 2.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 20.0,
                            width: MediaQuery.of(context).size.width / 1.55,
                            child: TextFormField(
                              controller: name,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFC4C4C4),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Date of Birth:",
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 15.0),
                        ),
                        // Spacer(
                        //   flex: 1,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 7.0, right: 2.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 20.0,
                            width: MediaQuery.of(context).size.width / 1.55,
                            child: TextFormField(
                              controller: dob,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFC4C4C4),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Gender:",
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 15.0),
                        ),
                        // Spacer(
                        //   flex: 1,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 7.0, right: 2.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 20.0,
                            width: MediaQuery.of(context).size.width / 1.55,
                            child: TextFormField(
                              controller: gender,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFC4C4C4),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Home Address:",
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 15.0),
                        ),
                        // Spacer(
                        //   flex: 1,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 7.0, right: 2.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 20.0,
                            width: MediaQuery.of(context).size.width / 1.55,
                            child: TextFormField(
                              controller: homeaddress,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFC4C4C4),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Education:",
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 15.0),
                        ),
                        // Spacer(
                        //   flex: 1,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 7.0, right: 2.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 20.0,
                            width: MediaQuery.of(context).size.width / 1.55,
                            child: TextFormField(
                              controller: education,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFC4C4C4),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "College Name:",
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 15.0),
                        ),
                        // Spacer(
                        //   flex: 1,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 7.0, right: 2.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 20.0,
                            width: MediaQuery.of(context).size.width / 1.55,
                            child: TextFormField(
                              controller: collegename,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFC4C4C4),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "College Address:",
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 15.0),
                        ),
                        // Spacer(
                        //   flex: 1,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 7.0, right: 2.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 20.0,
                            width: MediaQuery.of(context).size.width / 1.55,
                            child: TextFormField(
                              controller: collegeaddress,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFC4C4C4),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          _sendDataToSecondScreen(context);
                          // FirebaseFirestore.instance.collection('User').add({
                          //   'Name': name.text,
                          //   'DateofBirth': dob.text,
                          //   'Gender': gender.text,
                          //   'HomeAddress': homeaddress.text,
                          //   'Education': education.text,
                          //   'CollegeName': collegename.text,
                          //   'CollegeAddress': collegeaddress.text
                          // }).then((value) => Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => InfoPage())));
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => InfoPage()));
                        },
                        child: Text("Submit")),
                    SizedBox(
                      height: 10.0,
                    )
                  ],
                ),
              ),
            )));
  }
}
