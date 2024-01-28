import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:storage_shared_prefernces/cache_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CacheManager _cache = CacheImpl();
  int _getIndex = 0;

  @override
  void initState() {
    _getTheme();
    super.initState();
  }

  void _getTheme() async {
    _getIndex = await _cache.getTheme();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(_getIndex == 0 ? Icons.sunny_snowing : Icons.dark_mode_outlined),
          Gap.expand(20),
          Switch(
            value: _getIndex == 1,
            onChanged: (value) {
              _cache.saveTheme(_getIndex == 0 ? 1 : 0);
              _getTheme();
            },
          )
        ],
      ),
    );
  }
}
