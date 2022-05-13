import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Views/DetailsPage/DtailsScreen.dart';
import '../Views/Journey/JourneyPage.dart';
import '../shared/components/components.dart';

List<ItemCardData>item = [
  ItemCardData(title: 'تعلم اللغة الانجليزية في برايتون',isSelectef: false,image: 'https://www.iesabroad.org/files/blog/images/tug40860%40temple.edu/2019-07-14/hero_ultimaterome_hero_shutterstock789412159.jpg'),
  ItemCardData(title: 'تعلم اللغة الانجليزية في برايتون',isSelectef: true,image: 'https://www.iesabroad.org/files/blog/images/tug40860%40temple.edu/2019-07-14/hero_ultimaterome_hero_shutterstock789412159.jpg'),
  ItemCardData(title: 'تعلم اللغة الانجليزية في برايتون',isSelectef: false,image: 'https://www.iesabroad.org/files/blog/images/tug40860%40temple.edu/2019-07-14/hero_ultimaterome_hero_shutterstock789412159.jpg'),
  ItemCardData(title: 'تعلم اللغة الانجليزية في برايتون',isSelectef: true,image: 'https://www.iesabroad.org/files/blog/images/tug40860%40temple.edu/2019-07-14/hero_ultimaterome_hero_shutterstock789412159.jpg'),
  ItemCardData(title: 'تعلم اللغة الانجليزية في برايتون',isSelectef: true,image: 'https://www.iesabroad.org/files/blog/images/tug40860%40temple.edu/2019-07-14/hero_ultimaterome_hero_shutterstock789412159.jpg'),
  ItemCardData(title: 'تعلم اللغة الانجليزية في برايتون',isSelectef: false,image: 'https://www.iesabroad.org/files/blog/images/tug40860%40temple.edu/2019-07-14/hero_ultimaterome_hero_shutterstock789412159.jpg'),
  ItemCardData(title: 'تعلم اللغة الانجليزية في برايتون',isSelectef: false,image: 'https://www.iesabroad.org/files/blog/images/tug40860%40temple.edu/2019-07-14/hero_ultimaterome_hero_shutterstock789412159.jpg'),
  ItemCardData(title: 'تعلم اللغة الانجليزية في برايتون',isSelectef: true,image: 'https://www.iesabroad.org/files/blog/images/tug40860%40temple.edu/2019-07-14/hero_ultimaterome_hero_shutterstock789412159.jpg'),
  ItemCardData(title: 'تعلم اللغة الانجليزية في برايتون',isSelectef: true,image: 'https://www.iesabroad.org/files/blog/images/tug40860%40temple.edu/2019-07-14/hero_ultimaterome_hero_shutterstock789412159.jpg'),
  ItemCardData(title: 'تعلم اللغة الانجليزية في برايتون',isSelectef: false,image: 'https://www.iesabroad.org/files/blog/images/tug40860%40temple.edu/2019-07-14/hero_ultimaterome_hero_shutterstock789412159.jpg'),
  ItemCardData(title: 'تعلم اللغة الانجليزية في برايتون',isSelectef: false,image: 'https://www.iesabroad.org/files/blog/images/tug40860%40temple.edu/2019-07-14/hero_ultimaterome_hero_shutterstock789412159.jpg'),
  ItemCardData(title: 'تعلم اللغة الانجليزية في برايتون',isSelectef: true,image: 'https://www.iesabroad.org/files/blog/images/tug40860%40temple.edu/2019-07-14/hero_ultimaterome_hero_shutterstock789412159.jpg'),
  ItemCardData(title: 'تعلم اللغة الانجليزية في برايتون',isSelectef: false,image: 'https://www.iesabroad.org/files/blog/images/tug40860%40temple.edu/2019-07-14/hero_ultimaterome_hero_shutterstock789412159.jpg'),
];

class HomePage extends StatefulWidget {


  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          centerTitle: true,
          leading: Padding(
            padding: EdgeInsets.only(right: 20.w, top: 5.h),
            child: Column(
              children: [
                 CircleAvatar(
                  radius: 40.0.r,
                  backgroundImage: const NetworkImage(
                      'https://www.iesabroad.org/files/blog/images/tug40860%40temple.edu/2019-07-14/hero_ultimaterome_hero_shutterstock789412159.jpg'),
                  backgroundColor: Colors.transparent,
                ),
                Text('بريطانيا',
                    style: GoogleFonts.tajawal(
                        fontSize: 30.sp, color: Colors.black)),
              ],
            ),
          ),

          title: Text(
            "العروض الدراسية",
            style: GoogleFonts.tajawal(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: item.length,
              itemBuilder: (context, index) {
                return ItemCard(isSelected: item[index].isSelectef,);
              }),
        ),
      ),
    );
  }
}

class BuildRow extends StatelessWidget {
  String title;
  double height;
  String urlSvg;

   BuildRow({Key? key,required this.title,required this.urlSvg,required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 15.w, bottom: 20.h),
      child: Row(
        children: [
          SizedBox(width: 10.w,),
          SvgPicture.asset(
            urlSvg,
            height: height.h,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 60.w,
          ),
          Expanded(
            child: Text(
              title,
              maxLines: 2,
              //maxLines: 1,
              style: GoogleFonts.tajawal(
                  fontSize: 45.sp, color: const Color(0xff0B0742)),
              overflow: TextOverflow.ellipsis,
            ),
          ),

        ],
      ),
    );
  }
}


class ItemCard extends StatefulWidget {
  bool isSelected ;
   ItemCard({Key? key,required this.isSelected}) : super(key: key);

  @override
  _ItemCardFunState createState() => _ItemCardFunState();
}

class _ItemCardFunState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        navigatorTo(context, DtailsScreen());
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        height: 1050.h,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60.r),
          boxShadow: const [
            BoxShadow(
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 6),
                color: Colors.black38)
          ],
          color: Colors.white,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 500.h,
                  width: double.infinity,
                  child: FancyShimmerImage(
                    errorWidget: Image.network(
                        'https://i0.wp.com/www.dobitaobyte.com.br/wp-content/uploads/2016/02/no_image.png?ssl=1'),
                    imageUrl:
                    'https://www.iesabroad.org/files/blog/images/tug40860%40temple.edu/2019-07-14/hero_ultimaterome_hero_shutterstock789412159.jpg',
                  ),
                ),
                favoriteButton(isSelect:widget.isSelected,onTap: (){
                  setState(() {
                    widget.isSelected? widget.isSelected=false:widget.isSelected=true;
                  });
                }),

              ],
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: 40.h, right: 20.h),
                        width: double.infinity,
                        alignment: Alignment.centerRight,
                        child: Text(
                          'ابدأ باكتشاف ما في محيطك...',
                          style: GoogleFonts.tajawal(
                            fontSize: 45.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFF4b110),
                          ),
                        )),
                    SizedBox(
                      height: 20.h,
                    ),
                    BuildRow(
                        urlSvg: 'images/home.svg',
                        title: ' سكن جماعي',
                        height: 70),
                    BuildRow(
                        urlSvg: 'images/location.svg',
                        title: 'دمشق',
                        height: 70),
                    BuildRow(
                        urlSvg: 'images/time.svg',
                        title:'11 مايو 2022 إلى 20 ايلول 2023 ' ,
                        height: 60),
                    BuildRow(
                        urlSvg: 'images/distance.svg',
                        title: '145 كم',
                        height: 75),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

 Widget favoriteButton({required bool isSelect,required Function onTap}){
  return InkWell(
    onTap: () {
      onTap();
    },
    child: Padding(
        padding: EdgeInsets.only(top: 25.h, right: 35.w),
        child: Container(
            width: 130.w,
            height: 130.h,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 6),
                    color: Colors.black38)
              ],
              borderRadius: BorderRadius.circular(65.r),
            ),
            child: isSelect ? const Icon(
              Icons.favorite,
              color: Colors.red,
              size: 25,
            ):const Icon(
              Icons.favorite_outline,
              color: Colors.red,
              size: 25,
            ))),
  );
}

class ItemCardData {
  String title;
  String image;
  bool isSelectef = false;

  ItemCardData({required this.title, required this.image,required this.isSelectef});
}



