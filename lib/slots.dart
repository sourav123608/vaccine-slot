import 'package:flutter/material.dart';

class Slot extends StatefulWidget {
  final List slots;

  const Slot({Key? key, required this.slots}) : super(key: key);
  @override
  _SlotState createState() => _SlotState();
}

class _SlotState extends State<Slot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Available Slots')),
      body: Container(
        padding: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: widget.slots.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              color: Colors.grey.shade800,
              height: 200,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Center ID - ${widget.slots[index]['center_id']}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Center Name - ${widget.slots[index]['name']}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Center Address - ${widget.slots[index]['address']}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    const Divider(),
                    Text(
                      'Vaccine Name - ${widget.slots[index]['vaccine']}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    const Divider(),
                    Text(
                      'Slots - ${widget.slots[index]['slots']}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ]),
            );
          },
        ),
      ),
    );
  }
}
