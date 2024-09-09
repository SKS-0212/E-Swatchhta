import 'package:e_swatchtha/service/image_service.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class SuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Checkmark Icon
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 120.0,
            ),
            SizedBox(height: 30.0),

            // Congratulations Text
            Text(
              'Congratulations!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.green[700],
              ),
            ),

            // Registration Successful Text
            Text(
              'Photo Uploaded!',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 40.0),

            // Proceed Button with gradient
            GestureDetector(
              onTap: () {
                ImageService().callBackend();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  HomePage()),
                );
                print("Proceed button pressed");
              },
              child: Container(
                width: 200.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.green
                ),
                alignment: Alignment.center,
                child: Text(
                  'Proceed',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
