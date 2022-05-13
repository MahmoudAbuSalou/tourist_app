import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/components/components.dart';
import '../../shared/style/colors.dart';
import '../AppCubit/appCubit.dart';



class DtailsScreen extends StatelessWidget {
  DtailsScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        AppCubit cubit=AppCubit.get(context);
        cubit.FillList(context);
        return SafeArea(
          child: Scaffold(
            body: Directionality(
              textDirection: TextDirection.rtl,
              child: SingleChildScrollView(

                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.topLeft,
                      children: [

                        SizedBox(
                            height: 800.h,
                            width: double.infinity,
                            child: shammerImage(
                                'https://www.iesabroad.org/files/blog/images/tug40860%40temple.edu/2019-07-14/hero_ultimaterome_hero_shutterstock789412159.jpg')),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(onPressed: (){Navigator.of(context).pop();}, icon: Icon(Icons.arrow_back_ios_new),color: Colors.black,),


                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(

                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 30.w),
                            child: Text(
                              'التعرف على دمشق ',
                              maxLines: 3,
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(fontWeight: FontWeight.bold,fontSize: 80.sp),
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: 30.w),
                          child: favoriteButton(onTap:cubit.loveButton ,isSelect:cubit.love ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.w),
                          child: Text(
                            'بيرد أوف أيدن',
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline1!
                                .copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 80.sp,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => cubit.myList[index],
                      separatorBuilder: (context, index) =>
                          SizedBox(
                            height: 70.h,
                          ),
                      itemCount: cubit.myList.length,
                    ),
                    SizedBox(height: 200.h,)
                  ],
                ),
              ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            floatingActionButton: FloatingActionButton.extended(
              onPressed: (){},
              label: Text('    إشتراك     ',style: Theme.of(context).textTheme.headline1!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
              icon: const Icon(Icons.thumb_up),

            ),
          ),
        );
      },
    );
  }
}
