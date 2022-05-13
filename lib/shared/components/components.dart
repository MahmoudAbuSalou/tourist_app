
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../Views/Journey/JourneyPage.dart';
import '../network/end_point.dart';
import 'constants.dart';

Widget buildArticleItem(business, context ){
  return  Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        Container(
          width: 120.0,
          height: 120.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage('${business['urlToImage']}'),
                fit: BoxFit.cover,
              )
          ),
        ),
        const SizedBox(width: 20,),
        Expanded(
          // ignore: sized_box_for_whitespace
          child: Container(
            height: 120.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Text("${business['title']}",style:Theme.of(context).textTheme.bodyText1 ,maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),

                Expanded(
                  child: Text("${business['publishedAt']}",style: const TextStyle(
                      color: Colors.grey
                  ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                )

              ],
            ),
          ),
        ),
      ],
    ),
  );
}
Widget myDriver()=> Padding(
  padding: const EdgeInsetsDirectional.only(start:0),
  child: Container(
    width: double.infinity,
    height: 1,
    color: Colors.grey,
  ),
);
void navigatorTo(context,Widget screen){
  Navigator.push(context,MaterialPageRoute(builder: (context)=>screen));
}
void navigatorToNew(context,Widget screen){
  Navigator.pushAndRemoveUntil(context,
      MaterialPageRoute(builder: (context)=>screen),
          (route) => false);
}
Widget defaultTextFormField({
  required TextEditingController controller,
  required TextInputType type,
  required String label,
   Icon ? prefix,
  required Function valid,
  bool correct = true,
  bool focus = true,
  bool isPassword = false,
  bool enable = true,
  Icon? suffix,
  Function? onChanged,
  Function? onSubmitted,
  Function? suffixPressed,
  //Function ?onTap,
}) =>
    TextFormField(
      enabled: enable,
      validator: (s) {
        valid();

        },
      // onTap: (){
      //   onTap!();
      // },
      controller: controller,
      keyboardType: type,
      autocorrect: true,
      autofocus: true,
      textAlign: TextAlign.start,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
        prefixIcon: prefix,
        suffixIcon: suffix != null
            ? IconButton(
          icon: suffix,
          onPressed: (){
            suffixPressed!();
          },
        )
            : null,
      ),
      onChanged: (s){
        onChanged !();
      },
      onFieldSubmitted: (s){
        onSubmitted!();
      },
    );



Widget defaultTextButton({required String text,required Function function,Color color = Colors.white}){
  return TextButton(onPressed: (){
    function();
  }, child: Text(text.toUpperCase(),style: TextStyle(
    color:color
  ),));
}


void showToast({required String msg,required ToastState state})=> Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: toastColor(state),
      textColor: Colors.white,
      fontSize: 16.0

  );

Widget shammerImage (String url){
  return FancyShimmerImage(
    imageUrl: url,
    errorWidget: Image.network('https://i0.wp.com/www.dobitaobyte.com.br/wp-content/uploads/2016/02/no_image.png?ssl=1'),
  );
}
Widget myListTile(context,String Title,String Image,String content){
  return Column(
    children: [
      Row(children: [
        Container(

          height: 100.h,
          width: 150.w,
          child: SvgPicture.asset(
            'images/'+Image,

          ),
        ),
        Text(
          Title,
          style: Theme.of(context)
              .textTheme
              .headline2!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey
          )
          ,
        ),

      ],),
      SizedBox(
        height: 1.h,
      ),
      Container(
        height: 200.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 40.w,
            ),
            Text(
              content,
              maxLines: 3,
              style: Theme.of(context)
                  .textTheme
                  .headline3!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey
              )
              ,
            ),
          ],
        ),
      )
    ],
  );
}

Widget favoriteButton({required bool isSelect,required Function onTap}){
  return InkWell(
    hoverColor: Colors.white,
    highlightColor: Colors.white,
    focusColor: Colors.white,
    splashColor: Colors.white,

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
void navigatAnimation(context,page) {
  Navigator.push(
    context,
    PageRouteBuilder(
      pageBuilder: (c, a1, a2) => page,
      transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
      transitionDuration: Duration(milliseconds: 2000),
    ),
  )
  ;
}