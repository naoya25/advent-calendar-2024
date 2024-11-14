import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'pages/sample_page1.dart';
import 'pages/index_page.dart';

final routerProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          name: '/',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const IndexPage(),
            );
          },
        ),
        GoRoute(
          path: '/1',
          name: '/1',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const SamplePage1(),
            );
          },
        ),
      ],
      redirect: (context, state) {
        return null;
      },
      errorPageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: Scaffold(
          body: Center(
            child: Text(
              state.error.toString(),
            ),
          ),
        ),
      ),
    );
  },
);
