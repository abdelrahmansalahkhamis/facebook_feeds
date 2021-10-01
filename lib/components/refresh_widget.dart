import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:universal_io/io.dart';

class RefreshWidget extends StatelessWidget {
  final Widget child;
  final Future Function() onRefresh;

  const RefreshWidget(this.onRefresh, this.child);

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid)
      return buildAndroidList(child, onRefresh);
    else
      return buildIOSList(child, onRefresh);
  }

  Widget buildAndroidList(child, onRefresh) =>
      RefreshIndicator(onRefresh: onRefresh, child: child);

  Widget buildIOSList(child, onRefresh) => CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          CupertinoSliverRefreshControl(onRefresh: onRefresh),
          SliverToBoxAdapter(
            child: child,
          ),
        ],
      );
}
