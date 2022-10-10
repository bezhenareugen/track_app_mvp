import 'package:flutter/material.dart';
import 'package:track_app/components/delivery_info.dart';
import 'package:track_app/models/status_model.dart';
import 'package:track_app/screens/delivery_screen.dart';

class TabBarMain extends StatefulWidget {
  const TabBarMain({super.key});

  @override
  State<TabBarMain> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<TabBarMain> {
  final List<Status> statuses = [
    const Status(
        "Online",
        Icon(Icons.adjust, color: Color.fromARGB(255, 0, 255, 60)),
        Color.fromARGB(255, 0, 255, 60),
        true),
    const Status(
        "Offline",
        Icon(Icons.adjust, color: Color.fromARGB(255, 255, 13, 13)),
        Color.fromARGB(255, 255, 13, 13),
        false),
  ];

  late Status selectedStatus;

  @override
  void initState() {
    selectedStatus = statuses.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Loads"),
            leadingWidth: 100,
            leading: Container(
              padding: const EdgeInsets.only(left: 5),
              margin: const EdgeInsets.only(top: 5),
              width: 50,
              height: 40,
              child: DropdownButton(
                icon: const Visibility(
                    visible: false, child: Icon(Icons.arrow_downward)),
                underline: const SizedBox(),
                value: selectedStatus,
                items: statuses.map((Status status) {
                  return DropdownMenuItem(
                    value: status,
                    child: Row(
                      children: [
                        status.icon,
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          status.name,
                          style: TextStyle(color: status.textColor),
                        ),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (status) {
                  setState(() {
                    if (status!.isOnline) {
                      selectedStatus = statuses.first;
                      print("Status was changed to 'ONLINE'");
                    } else {
                      selectedStatus = statuses.last;
                      print("Status was changed to 'OFFLINE'");
                    }
                  });
                },
              ),
            ),
            centerTitle: true,
            bottom: const TabBar(
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.blue,
              tabs: [
                Tab(text: "Active"),
                Tab(text: "Delivered"),
                Tab(text: "Processing"),
              ],
            ),
          ),
          body: const Padding(
            padding: EdgeInsets.only(left: 10, top: 15, right: 10),
            child: TabBarView(
              children: [
                Text("Active page"),
                DeliveryScreen(),
                Text("Processing page"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
