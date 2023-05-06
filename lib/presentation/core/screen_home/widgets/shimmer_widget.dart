import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tags/application/blocs/search_url/search_bloc.dart';
import 'package:tags/application/core/constants.dart';

Widget showShimmerLayout(
    SearchState state, int? count, EdgeInsetsGeometry padding) {
  return Shimmer.fromColors(
    baseColor: Colors.grey[400]!,
    highlightColor: Colors.grey[200]!,
    enabled: state.isLoading,
    child: ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      shrinkWrap: true,
      itemCount: count,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Padding(
            padding: padding,
            child: const Text(
              '',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
        );
      },
    ),
  );
}

Widget shmmierWidgetDetails(SearchState state, Size size) {
  return Shimmer.fromColors(
    baseColor: Colors.grey[400]!,
    highlightColor: Colors.grey[200]!,
    enabled: state.isLoading,
    child: ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width,
              child: const Card(
                child: Padding(
                  padding: EdgeInsets.all(8),
                ),
              ),
            ),
            SizedBox(
              width: size.width - 70,
              child: const Card(
                child: Padding(
                  padding: EdgeInsets.all(8),
                ),
              ),
            ),
          ],
        );
      },
    ),
  );
}

Widget shmmierWidgetThumbnail(SearchState state, Size size) {
  return Shimmer.fromColors(
    baseColor: Colors.grey[400]!,
    highlightColor: Colors.grey[200]!,
    enabled: state.isLoading,
    child: ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: size.width,
              child: const Card(
                child: Padding(
                  padding: EdgeInsets.all(8),
                ),
              ),
            ),
            SizedBox(
              width: size.width - 70,
              child: const Card(
                child: Padding(
                  padding: EdgeInsets.all(8),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 60,
                ),
                SizedBox(
                  height: 200,
                  width: size.width,
                  child: const Card(
                    child: Padding(
                      padding: EdgeInsets.all(6),
                    ),
                  ),
                ),
              ],
            )
          ],
        );
      },
    ),
  );
}
