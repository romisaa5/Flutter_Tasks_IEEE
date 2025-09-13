import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider_task/features/home/presentation/ui/views/home_view.dart';
import 'package:provider_task/features/navBar/presentation/manager/navbar_cubit/navbar_cubit.dart';
import 'package:provider_task/features/profile/presentation/ui/views/profile_view.dart';
import 'package:provider_task/features/store/presentation/ui/views/store_view.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});
  static List<Widget> views = [
    const HomeView(),
    const StoreView(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavbarCubit, NavbarState>(
      builder: (context, index) {
        return Scaffold(
          body: views[index is NavbarUpdate ? index.currentIndex : 0],
          bottomNavigationBar: Container(
            height: 75,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, -1),
                ),
              ],
            ),
            child: BottomNavigationBar(
              elevation: 2,
              backgroundColor: Colors.white,
              currentIndex: index is NavbarUpdate ? index.currentIndex : 0,
              onTap: (newIndex) {
                context.read<NavbarCubit>().updateIndex(newIndex);
              },
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,

              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, size: 24.sp),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_outlined, size: 24.sp),
                  label: 'Store',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person, size: 24.sp),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
