import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:track_app/components/delivery_info.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({super.key});

  @override
  State<StatefulWidget> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  List<DeliveryInfoWidget> items = [
    const DeliveryInfoWidget(
        tripNumber: "123-021930",
        departureAddress: "Chisinau Clea Iesilor 345",
        departureDate: "Aug 12, 2022",
        destinationAddress: "Cahul str. Stefan Cel Mare",
        destinationDate: "12 Aug, 2022",
        deadHead: "150km",
        trip: null,
        stops: "2",
        weight: "100kg"),
    const DeliveryInfoWidget(
        tripNumber: "123123",
        departureAddress: "Balti Mircea Cel Batrin 345",
        departureDate: "Aug 14, 2022",
        destinationAddress: "Cahul str. Stefan Cel Mare",
        destinationDate: "12 Aug, 2022",
        deadHead: "150km",
        trip: null,
        stops: "2",
        weight: "100kg"),
    const DeliveryInfoWidget(
        tripNumber: "123-23423432",
        departureAddress: "Chisinau Clea Iesilor 345",
        departureDate: "Aug 12, 2022",
        destinationAddress: "Cahul str. Stefan Cel Mare",
        destinationDate: "12 Aug, 2022",
        deadHead: "150km",
        trip: null,
        stops: "2",
        weight: "100kg"),
    const DeliveryInfoWidget(
        tripNumber: "123-021930",
        departureAddress: "Chisinau Clea Iesilor 345",
        departureDate: "Aug 12, 2022",
        destinationAddress: "Cahul str. Stefan Cel Mare",
        destinationDate: "12 Aug, 2022",
        deadHead: "1124km",
        trip: "180km",
        stops: null,
        weight: "100kg"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: items,
    );
  }
}
