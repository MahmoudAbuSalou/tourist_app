
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourist_app/HomeLayout/HomePage.dart';

import '../../shared/components/components.dart';
import '../DetailsPage/DtailsScreen.dart';

class Journey extends StatelessWidget {
   Journey({Key? key}) : super(key: key);
  List <Widget>list=[
   Image.asset('images/slider3.png',fit: BoxFit.fitHeight,),
   Image.asset('images/slider2.png',fit: BoxFit.fitHeight,),
   Image.asset('images/slider1.png',fit: BoxFit.fitHeight,),
   Image.asset('images/slider4.jpg',fit: BoxFit.fitHeight,),
   Image.asset('images/slider5.png',fit: BoxFit.fitHeight,),
   Image.asset('images/slider6.png',fit: BoxFit.fitHeight,),
   Image.asset('images/slider7.jpg',fit: BoxFit.fitHeight,),


  ];

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    return Scaffold(
      body: Directionality(
          textDirection: TextDirection.rtl,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height:1100.h ,
                        width: 1500.w,
                        child:
                        CarouselSlider(
                            items: list,
                            options: CarouselOptions(
                              height: 400,
                              aspectRatio: 16/9,
                              viewportFraction: 1,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 2),
                              autoPlayAnimationDuration: Duration(milliseconds: 1600),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,

                              scrollDirection: Axis.horizontal,
                            )
                        ),),
                    SizedBox(
                      height: 100.h,
                    ),
                    Text(
                      '???????? ???????????? ???? ???? ??????????',
                      style: _themeData.textTheme.headline1!.copyWith(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 100.h,
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      width: MediaQuery.of(context).size.width-100.w,
                      child: ExpansionTile(
                        title: Text(
                          '???????????? :',
                          style: _themeData.textTheme.headline1!.copyWith(
                            color: Colors.black,


                          ),
                          textDirection: TextDirection.rtl,
                        ),
                        children: [
                        Row(
                          children: [
                     SizedBox(width: 40.w,),
                      SvgPicture.asset(
                          'images/Flag.svg',
                           width: 100.w,

                      ),
                            SizedBox(
                              width: 50.w,
                            ),
                            Text('????????????????',style: GoogleFonts.tajawal(
                              fontSize: 50.sp
                            ),)
                          ],
                        ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              SizedBox(width: 40.w,),
                              SvgPicture.asset(
                                'images/Flag.svg',
                                width: 100.w,

                              ),
                              SizedBox(
                                width: 50.w,
                              ),
                              Text('????????????????',style: GoogleFonts.tajawal(
                                  fontSize: 50.sp
                              ),)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              SizedBox(width: 40.w,),
                              SvgPicture.asset(
                                'images/Flag.svg',
                                width: 100.w,

                              ),
                              SizedBox(
                                width: 50.w,
                              ),
                              Text('????????????????',style: GoogleFonts.tajawal(
                                  fontSize: 50.sp
                              ),)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              SizedBox(width: 40.w,),
                              SvgPicture.asset(
                                'images/Flag.svg',
                                width: 100.w,

                              ),
                              SizedBox(
                                width: 50.w,
                              ),
                              Text('????????????????',style: GoogleFonts.tajawal(
                                  fontSize: 50.sp
                              ),)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              SizedBox(width: 40.w,),
                              SvgPicture.asset(
                                'images/Flag.svg',
                                width: 100.w,

                              ),
                              SizedBox(
                                width: 50.w,
                              ),
                              Text('????????????????',style: GoogleFonts.tajawal(
                                  fontSize: 50.sp
                              ),)
                            ],
                          ),

                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      width: MediaQuery.of(context).size.width-100.w,
                      child: ExpansionTile(
                        title: Text(
                          '?????????? :',
                          style: _themeData.textTheme.headline1!.copyWith(
                            color: Colors.black,


                          ),
                          textDirection: TextDirection.rtl,
                        ),
                        children: [
                         Row(
                           children: [
                             SizedBox(width: 40.w,),
                             Text('???????? ????????????',style: GoogleFonts.tajawal(
                               fontSize: 60.sp
                             ),),
                           ],
                         ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              SizedBox(width: 40.w,),
                              Text('???????? ????????????',style: GoogleFonts.tajawal(
                                  fontSize: 60.sp
                              ),),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              SizedBox(width: 40.w,),
                              Text('???????? ????????????',style: GoogleFonts.tajawal(
                                  fontSize: 60.sp
                              ),),
                            ],
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 250.h,
                    ),




                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(

                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(40.r)
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: MaterialButton(onPressed: (){

                  navigatorTo(context, const HomePage());
                },

                  color: Colors.blue,
                  height: 150.h,
                  minWidth:500.w,

                  child: Text('??????',
                    style:_themeData.textTheme.headline1!.copyWith(
                      fontSize: 75.sp,
                      color: Colors.white

                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
