import 'package:flutter/material.dart';

class DeliveryInfoWidget extends StatefulWidget {
  const DeliveryInfoWidget({
    super.key,
    required this.tripNumber,
    required this.departureAddress,
    required this.departureDate,
    required this.destinationAddress,
    required this.destinationDate,
    required this.deadHead,
    required this.trip,
    required this.stops,
    required this.weight,
  });

  final String tripNumber;
  final String departureAddress;
  final String departureDate;
  final String destinationAddress;
  final String destinationDate;
  final String? deadHead;
  final String? trip;
  final String? stops;
  final String? weight;

  @override
  State<DeliveryInfoWidget> createState() => _DeliveryWidgetState();
}

class _DeliveryWidgetState extends State<DeliveryInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        height: 190,
        padding:
            const EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 10),
        child: Column(
          children: [
            Row(
              children: [
                Text("Trip Number: ${widget.tripNumber}",
                    style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 5),
                  width: 350,
                  height: 1,
                  color: Colors.grey,
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: const [
                    Icon(Icons.arrow_upward, color: Colors.blue),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(widget.departureAddress,
                            style: const TextStyle(
                                fontSize: 20, color: Colors.white)),
                      ],
                    ),
                    Row(
                      children: [
                        Text(widget.departureDate,
                            style: const TextStyle(
                                fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Column(
                  children: const [
                    Icon(Icons.arrow_downward, color: Colors.red),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(widget.destinationAddress,
                            style: const TextStyle(
                                fontSize: 20, color: Colors.white)),
                      ],
                    ),
                    Row(
                      children: [
                        Text(widget.destinationDate,
                            style: const TextStyle(
                                fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: const [
                        Text("DEADHEAD",
                            style: TextStyle(fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        Text(widget.deadHead ?? "_",
                            style: const TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
                Container(
                  width: 1,
                  height: 30,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    Row(
                      children: const [
                        Text("TRIP",
                            style: TextStyle(fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        Text(widget.trip ?? "_",
                            style: const TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
                Container(
                  width: 1,
                  height: 30,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    Row(
                      children: const [
                        Text("STOPS",
                            style: TextStyle(fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        Text(widget.stops ?? "_",
                            style: const TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
                Container(
                  width: 1,
                  height: 30,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    Row(
                      children: const [
                        Text("WEIGHT",
                            style: TextStyle(fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        Text(widget.weight ?? "_",
                            style: const TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
