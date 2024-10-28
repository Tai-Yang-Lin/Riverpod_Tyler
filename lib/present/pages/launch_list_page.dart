import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tyler/widget_class.dart';
import 'package:riverpod_tyler/color_system.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_tyler/providers/launch_provider.dart';
import 'package:riverpod_tyler/providers/launch_class.dart';

class LaunchListPage extends ConsumerWidget {

  Widget build(BuildContext context, WidgetRef ref) {
    final launchAsyncValue = ref.watch(launchProvider);

    return  Scaffold(
      backgroundColor: b0,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined,color: w0,),
          onPressed: () => context.pop(),
        ),
        title: HeadlineTxtS('All Launches',c: w0),
        backgroundColor: b0,
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_vert,color: w0,)
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Space(d: 8),
              Icon(Icons.sort,color: y500,),
              Space(d: 5),
              BodyTxtL("Flight number:",c: y500),
              Space(d: 5),
              BodyTxtL("oldest",c: y500),
            ],
          ),
          Expanded(
            child: launchAsyncValue.when(
              data: (launches) => ListView.builder(
                itemCount: launches.length,
                itemBuilder: (context, index) {
                  final launch = launches[index];
                  return InkWell(
                    onTap: () => context.push('/home/launch/${launch.missionName!}'),
                    child: Container(
                      color: b0,
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BodyTxtL("flight ${launch.flightNumber}",c: w0),
                                BodyTxtL(launch.missionName!,c: w0),
                                BodyTxtL(launch.launchDateLocal!,c: w0),
                              ],
                            ),
                          ),

                          Container(
                            height: 40,
                            width: 40,
                            child: Image.network("${launch.links!['mission_patch']}"),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              loading: () => Center(child: CircularProgressIndicator()),
              error: (error, _) => Center(child: BodyTxtL('Failed to load launches')),
            ),
          ),
        ],
      ),
    );
  }

}


