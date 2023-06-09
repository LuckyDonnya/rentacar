import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:rentacar/pages/activity.dart';
import 'package:rentacar/pages/home.dart';
import 'package:rentacar/pages/massages.dart';
import 'package:rentacar/pages/profile.dart';
import 'package:rentacar/pages/wallet.dart';
import 'package:rentacar/views/themes/colors.dart';

enum _SelectedTab { discover, messages, wallet, activity, profile }

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  _SelectedTab _selectedTab = _SelectedTab.discover;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _SelectedTab.values.indexOf(_selectedTab),
        children: [
          Home(),
          activity(),
          wallet(),
          massages(),
          profile(),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
        dotIndicatorColor: MyColors.black,
        // backgroundColor: MyColors.secondary,
        enableFloatingNavBar: false,
        paddingR: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 5,
        ),
        enablePaddingAnimation: false,
        items: [
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.discover
                  ? "images/discover_filled.png"
                  : "images/discover_outlined.png",
              width: 24,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.messages
                  ? "images/my_aktivity_filled.png"
                  : "images/my_aktivity_outlined.png",
              width: 24,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.wallet
                  ? "images/Wallet_filled.png"
                  : "images/Wallet_outlined.png",
              width: 24,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.activity
                  ? "images/messages_filled.png"
                  : "images/messages_outlined.png",
              width: 24,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.profile
                  ? "images/ic_user_filled.png"
                  : "images/ic_user_outlined.png",
              width: 24,
            ),
          ),
        ],
      ),
    );
  }
}
