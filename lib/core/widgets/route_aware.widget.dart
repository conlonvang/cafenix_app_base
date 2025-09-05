import 'package:flutter/material.dart';

class RouteAwareWidget extends StatefulWidget {
  final Widget child;
  final bool checkErrorSystem;
  const RouteAwareWidget({
    super.key,
    required this.child,
    this.checkErrorSystem = false,
  });

  @override
  State<RouteAwareWidget> createState() => _RouteAwareWidgetState();
}

class _RouteAwareWidgetState extends State<RouteAwareWidget> with RouteAware {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didPopNext() {}

  @override
  // Widget build(BuildContext context) => BlocBuilder<ConfigCubit, ConfigState>(
  //       builder: (context, state) {
  //         if (widget.checkErrorSystem) {
  //           final block = state.configSystems.firstWhereOrNull((element) => element.paramName == 'SysStatus');
  //           if (block != null && ['Maintaince', 'NotStarted'].contains(block.paramValue)) {
  //             return const ErrorSystemPage();
  //           }
  //         }
  //         return widget.child;
  //       },
  //     );
  Widget build(BuildContext context) => widget.child;
}
