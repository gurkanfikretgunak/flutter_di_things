import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';

import '../core/data/models/user.dart';
import 'logic/main_logic.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainLogic>(
      builder: (context, bloc, _) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Users'),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 200,
                child: StreamBuilder<User>(
                  stream: bloc.user,
                  builder: (context, snapshot) {
                    Logger().wtf(snapshot);
                    if (snapshot.hasData) {
                      return Text(snapshot.data!.name ?? "Default Text Value");
                    } else {
                      return const CircularProgressIndicator();
                    }
                  },
                ),
              ),
              StreamBuilder<bool>(
                stream: bloc.loading,
                builder: (context, snapshot) {
                  return LoadingOverlay(
                    isLoading: snapshot.data ?? false,
                    child: StreamBuilder<List<User>>(
                      stream: bloc.users,
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return Center(
                            child: ElevatedButton(
                              onPressed: bloc.getLoadUsers,
                              child: const Text('Get User'),
                            ),
                          );
                        }

                        final users = snapshot.data!;
                        return Expanded(
                          child: ListView.builder(
                            itemCount: users.length,
                            itemBuilder: (context, index) {
                              final user = users[index];
                              return ListTile(
                                title: Text(user.name!),
                                subtitle: Text(user.surname!),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
