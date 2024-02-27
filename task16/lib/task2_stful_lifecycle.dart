import 'package:flutter/material.dart';

class WidgetLifecyclePage extends StatefulWidget {
  const WidgetLifecyclePage({super.key});

  @override
  State<WidgetLifecyclePage> createState() => _WidgetLifecyclePageState();
}

class _WidgetLifecyclePageState extends State<WidgetLifecyclePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState called");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("did change dependencies called");
  }

  @override
  Widget build(BuildContext context) {
    print("Build called");
    return const Scaffold();
  }

  @override
  void didUpdateWidget(covariant WidgetLifecyclePage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("Did update widget called");
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    print("setState called");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("deactivate called");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose called");
  }
}
