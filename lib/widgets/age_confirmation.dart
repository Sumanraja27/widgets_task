import 'package:flutter/material.dart';

void main() {
  runApp(const AgeConfirmation());
}

class AgeConfirmation extends StatelessWidget {
  const AgeConfirmation({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AgeConfirmation(),
    );
  }
}

class AgeConfirmationScreen extends StatelessWidget {
  const AgeConfirmationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date of Birth Entry'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDOBEntryDialog(context);
          },
          child: const Text('Enter Date of Birth'),
        ),
      ),
    );
  }

  void showDOBEntryDialog(BuildContext context) async {
    DateTime selectedDate = DateTime.now(); // Default to today's date

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Enter Your DOB'),
          content: SizedBox(
            height: 200,
            child: Column(
              children: [
                ListTile(
                  title: const Text('Enter Your DOB'),
                  subtitle: Text(
                    "${selectedDate.toLocal()}".split(' ')[0],
                  ),
                  onTap: () async {
                    DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: selectedDate,
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    );
                    if (picked != null && picked != selectedDate) {
                      // User selected a new date
                      selectedDate = picked;
                    }
                  },
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Handle the selected date
                Navigator.of(context).pop(); // Close the dialog
                // Add your logic for using the selected date here
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
