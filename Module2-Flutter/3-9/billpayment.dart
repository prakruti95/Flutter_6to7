import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BillPaymentScreenCupertino extends StatelessWidget {
  final TextEditingController _billAmountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Bill Payment'),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CupertinoTextField(
              controller: _billAmountController,
              placeholder: 'Enter Bill Amount',
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            CupertinoButton.filled(
              onPressed: () {
                final billAmount = _billAmountController.text;
                if (billAmount.isNotEmpty) {
                  // Simulating a payment process
                  showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: Text('Payment Successful'),
                        content: Text('You have paid ₹$billAmount.'),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pop(context); // Navigate back to Home
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  // Show error if no amount is entered
                  showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: Text('Error'),
                        content: Text('Please enter a valid bill amount.'),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            onPressed: () {
                              Navigator.pop(context); // Close the dialog
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text('Pay Bill'),
            ),
          ],
        ),
      ),
    );
  }
}
