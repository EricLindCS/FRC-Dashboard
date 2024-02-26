import 'package:flutter_application_1/services/dashboard_state.dart';
import 'package:flutter/material.dart';

class BooleanTest extends StatelessWidget {
  const BooleanTest({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: DashboardState.poleLLEnabled(),
      builder: (context, snapshot) {
        bool poleLLEnabled = snapshot.data ?? true;
        return ElevatedButton(
          onPressed: () {
            DashboardState.setPoleLLEnabled(!poleLLEnabled);
          },
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(250, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
            foregroundColor: Colors.white,
            backgroundColor: poleLLEnabled ? Colors.green : null,
          ),
          child: Text(
            'Toggle',
            style: const TextStyle(fontSize: 15),
          ),
        );
      },
    );
  }
}
