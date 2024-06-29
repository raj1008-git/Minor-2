import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../SearchScreen/Model/search_result_model.dart';

class RideDetailsPage extends StatefulWidget {
  SearchResultModel searchResultPerson;
  RideDetailsPage({super.key, required this.searchResultPerson});

  @override
  State<RideDetailsPage> createState() => _RideDetailsPageState();
}

class _RideDetailsPageState extends State<RideDetailsPage> {
  late GoogleMapController mapController;
  final String _apiKey = 'AIzaSyAgMpzV9aTQz6SuJmdNtbXXsf2C33meBak';
  final LatLng _center = const LatLng(27.700769, 85.300140);

  final Set<Marker> _marker = {};

  void _omMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: const Text(
          'Ride Details',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white38,
          ),
          child: Column(
            children: [
              Container(
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: GoogleMap(
                  onMapCreated: _omMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 20,
                  ),
                  markers: _marker,
                ),
                // child: ,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: widget.searchResultPerson,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
