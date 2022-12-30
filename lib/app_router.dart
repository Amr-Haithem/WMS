import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storage_management_system/controller/categories/categories_edit/edit_categories_cubit.dart';
import 'package:storage_management_system/view/DonationScreen.dart';
import 'package:storage_management_system/view/admin_dashboard/AdminDashboardScreen.dart';
import 'package:storage_management_system/view/wrapper.dart';

import 'controller/authentication/authentication_cubit.dart';
import 'controller/categories/categories/categories_cubit.dart';

const loginAndRegisterScreenUrl = "/";
const donationScreenUrl = "/donationScreenUrl";
const adminDashBoardScreenUrl = "/adminDashBoardScreenUrl";

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case donationScreenUrl:
        return MaterialPageRoute(
          builder: (_) => const DonationScreen(),
        );
      case loginAndRegisterScreenUrl:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            lazy: false,
            create: (context) => AuthenticationCubit(),
            child: const Wrapper(),
          ),
        );
      case adminDashBoardScreenUrl:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(
                lazy: false,
                create: (context) => CategoriesCubit(),
              ),
              BlocProvider(
                lazy: false,
                create: (context) => EditCategoriesCubit(),
              ),
            ],
            child: const AdminDashboardScreen(),
          ),
        );
    }
    //todo whats a better alternative for this null
    return null;
  }
}
