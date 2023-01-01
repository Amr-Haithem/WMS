import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storage_management_system/controller/authentication/authentication_cubit.dart';
import 'package:storage_management_system/model/firebase/authentication.dart';
import 'package:storage_management_system/view/donation_screen/DonationScreen.dart';
import 'package:storage_management_system/view/TabBarScreen.dart';

import '../app_router.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        if (state is Authenticated) {
          if (state.isAdmin) {
            print("authenticated");
            Navigator.pushNamed(context, adminDashBoardScreenUrl);
          } else if (!state.isAdmin) {
            print("authenticated");
            Navigator.pushNamed(context, donationScreenUrl,
                arguments: state.donator);
          }
        }
      },
      builder: (context, state) {
        if (state is Authenticating) {
          print("loading");
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return TabBarScreen();
        }
      },
    );
  }
}
