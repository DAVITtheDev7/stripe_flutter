import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stripe_flutter/stripe/stripe_service.dart';

class PaymentPage extends ConsumerWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stripeService = ref.read(stripePaymentProvider);
    return Scaffold(
      appBar: AppBar(title: Text("Stripe Payment Test"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This is a test payment page.",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                try {
                  await stripeService.initPaymentSheet(
                    amount: '5',
                    currency: 'GEL',
                    merchantName: 'Davit',
                  );

                  await stripeService.presentPaymentSheet();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Payment successful!")),
                  );
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Error initializing payment: $e")),
                  );
                }
              },
              child: Text("Pay 5 gel"),
            ),
          ],
        ),
      ),
    );
  }
}
