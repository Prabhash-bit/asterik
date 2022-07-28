import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class InfoPage extends StatefulWidget {
  final String name_text;
  final String dob_text;
  final String gender_text;
  final String homeaddress_text;
  final String education_text;
  final String college_text;
  final String collegeaddress_text;
  const InfoPage(
      {super.key,
      required this.name_text,
      required this.dob_text,
      required this.gender_text,
      required this.homeaddress_text,
      required this.education_text,
      required this.college_text,
      required this.collegeaddress_text});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  bool value = true;
  final Set<Marker> markers = new Set();

  LatLng _college = LatLng(27.671219, 85.348097);
  LatLng _home = LatLng(27.734797, 85.333633);
  late GoogleMapController _controller;
  Location _location = Location();

  void _onMapCreated(GoogleMapController _cntlr) {
    _controller = _cntlr;
    _location.onLocationChanged.listen((l) {
      _controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: value ? _college : _home, zoom: 15),
        ),
      );
    });
  }

  Widget buildAndroidSwitch() => Transform.scale(
        scale: 2,
        child: Switch(
          value: value,
          onChanged: (value) => setState(() {
            this.value = value;
          }),
        ),
      );

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFF96D8FB),
          appBar: AppBar(
            elevation: 10.0,
            centerTitle: true,
            automaticallyImplyLeading: true,
            backgroundColor: const Color(0xFF0C65A1),
            title: const Text(
              'Demo Form- Page 2',
            ),
          ),
          body: Stack(children: [
            Positioned(
                // left: 20.0,
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Name:",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Text(widget.name_text)
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Date of Birth:",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Text(widget.dob_text)
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Gender:",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Text(widget.gender_text)
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Home Address:",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Text(widget.homeaddress_text)
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Education:",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 15.0),
                        ),
                        // Spacer(
                        //   flex: 1,
                        // ),
                        Text(widget.education_text)
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "College Name:",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Text(widget.college_text)
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "College Address:",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Text(widget.collegeaddress_text)
                      ],
                    ),
                  ],
                ),
              ),
            )),
            Positioned(
              top: 230.0,
              child: Container(
                  height: 80.0, width: 80.0, child: buildAndroidSwitch()),
            ),
            Positioned(
              top: 300.0,
              child: Container(
                height: 500.0,
                width: 400.0,
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(target: _home),
                  mapType: MapType.normal,
                  markers: getmarkers(),
                  onMapCreated: _onMapCreated,
                  myLocationEnabled: true,
                ),
              ),
            )
          ])),
    );
  }

//Markers according to static location
  Set<Marker> getmarkers() {
    //markers to place on map
    setState(() {
      markers.add(Marker(
        //add first marker
        markerId: MarkerId(_home.toString()),
        position: _home, //position of marker
        infoWindow: InfoWindow(
          //popup info
          title: 'My college',
          snippet: 'Welcome',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      markers.add(Marker(
        //add second marker
        markerId: MarkerId(_college.toString()),
        position: _college, //position of marker
        infoWindow: InfoWindow(
          //popup info
          title: 'Home',
          snippet: 'Welcome',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
    });

    return markers;
  }
}
