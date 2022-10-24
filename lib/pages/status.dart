import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:band_names/services/socket_service.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final socketservice = Provider.of<SocketService>(context);
    //socketservice.socket.emit(event)
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ServerStatus: ${socketservice.serverStatus}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.message),
        onPressed: () {
          socketservice.emit('emitir-mensaje',
              {'nombre': 'Flutter', 'mensaje': 'Hola desde Flutter'});
        },
      ),
    );
  }
}
