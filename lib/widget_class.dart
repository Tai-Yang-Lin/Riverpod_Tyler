import 'package:flutter/material.dart';
import 'color_system.dart';

//double fem = 1;
double winH = 1;//window Height
double winW = 1;

//字體尾巴L、M、S分別代表此系列字體的：大(Large，大寫L)中(Medium，大寫M)小(Small，大寫S)

//Display用於非常大的字體
//Large：主頁或歡迎頁的主標題
//Medium：重要屏幕或主要內容區的次要標題
//Small內容區中的次級標題
Widget DisplayTxtL(String s,{Color c = colorTxt,TextAlign a = TextAlign.start}){
  return Text(s,style: TextStyle(color: c,fontWeight: FontWeight.w400,fontSize: 57,letterSpacing: -0.25,height: 1.12,),
    textAlign: a,
  );
}
Widget DisplayTxtM(String s,{Color c = colorTxt,TextAlign a = TextAlign.start}){
  return Text(s,style: TextStyle(color: c,fontWeight: FontWeight.w400,fontSize: 45,letterSpacing: 0,height: 1.16,),
    textAlign: a,
  );
}
Widget DisplayTxtS(String s,{Color c = colorTxt,TextAlign a = TextAlign.start}){
  return Text(s,style: TextStyle(color: c,fontWeight: FontWeight.w400,fontSize: 36,letterSpacing: 0,height: 1.22,),
    textAlign: a,
  );
}

//Headline用於內容標題
//Large: 用於主要的內容標題，比 display 系列稍小，適用於較重要但不是最主要的標題。
//Medium: 用於次要的內容標題，通常用於子標題或內容區的分隔。
//Small: 用於小內容的標題，適用於細分內容區域。
Widget HeadlineTxtL(String s,{Color c = colorTxt,TextAlign a = TextAlign.start}){
  return Text(s,style: TextStyle(color: c,fontWeight: FontWeight.w400,fontSize: 32,letterSpacing: 0,height: 1.25,),
    textAlign: a,
  );
}
Widget HeadlineTxtM(String s,{Color c = colorTxt,TextAlign a = TextAlign.start}){
  return Text(s,style: TextStyle(color: c,fontWeight: FontWeight.w400,fontSize: 28,letterSpacing: 0,height: 1.29,),
    textAlign: a,
  );
}
Widget HeadlineTxtS(String s,{Color c = colorTxt,TextAlign a = TextAlign.start}){
  return Text(s,style: TextStyle(color: c,fontWeight: FontWeight.w400,fontSize: 24,letterSpacing: 0,height: 1.33,),
    textAlign: a,
  );
}

//Title用於標題文本
//Large: 用於較大的標題文本，適合在內容區塊上方顯示的主要標題。
//Medium: 用於中等大小的標題文本，適合在卡片或清單項目上顯示的標題。
//Small: 用於較小的標題文本，適合在次級內容區或輔助資訊中使用。
Widget TitleTxtL(String s,{Color c = colorTxt,TextAlign a = TextAlign.start}){
  return Text(s,style: TextStyle(color: c,fontWeight: FontWeight.w400,fontSize: 22,letterSpacing: 0,height: 1.27,),
    textAlign: a,
  );
}
Widget TitleTxtM(String s,{Color c = colorTxt,TextAlign a = TextAlign.start}){
  return Text(s,style: TextStyle(color: c,fontWeight: FontWeight.w500,fontSize: 16,letterSpacing: 0.15,height: 1.5,),
    textAlign: a,
  );
}
Widget TitleTxtS(String s,{Color c = colorTxt,TextAlign a = TextAlign.start}){
  return Text(s,style: TextStyle(color: c,fontWeight: FontWeight.w500,fontSize: 14,letterSpacing: 0.1,height: 1.43,),
    textAlign: a,
  );
}

//Body用於主體文本
//Large: 適合主要的內容段落。
//Medium: 適合次要的內容段落。
//Small: 適合輔助內容或註釋。
Widget BodyTxtL(String s,{Color c = colorTxt,TextAlign a = TextAlign.start}){
  return Text(s,style: TextStyle(color: c,fontWeight: FontWeight.w400,fontSize: 16,letterSpacing: 0.5,height: 1.5,),
    textAlign: a,
  );
}
Widget BodyTxtM(String s,{Color c = colorTxt,TextAlign a = TextAlign.start}){
  return Text(s,style: TextStyle(color: c,fontWeight: FontWeight.w400,fontSize: 14,letterSpacing: 0.5,height: 1.43,),
    textAlign: a,
  );
}
Widget BodyTxtS(String s,{Color c = colorTxt,TextAlign a = TextAlign.start}){
  return Text(s,style: TextStyle(color: c,fontWeight: FontWeight.w400,fontSize: 12,letterSpacing: 0.4,height: 1.33,),
    textAlign: a,
  );
}

//Label用於標籤
//Large: 適合按鈕或重要的標籤。
//Medium: 適合一般的標籤或表單欄位。
//Small: 適合次要的標籤或說明性文本。
//Prominent: 比一般更加重加粗一點，最尾巴加大寫P代表
Widget LabelTxtLP(String s,{Color c = colorTxt,TextAlign a = TextAlign.start}){
  return Text(s,style: TextStyle(color: c,fontWeight: FontWeight.w700,fontSize: 14,letterSpacing: 0.1,height: 20,),
    textAlign: a,
  );
}
Widget LabelTxtL(String s,{Color c = colorTxt,TextAlign a = TextAlign.start}){
  return Text(s,style: TextStyle(color: c,fontWeight: FontWeight.w500,fontSize: 14,letterSpacing: 0.1,height: 20,),
    textAlign: a,
  );
}
Widget LabelTxtMP(String s,{Color c = colorTxt,TextAlign a = TextAlign.start}){
  return Text(s,style: TextStyle(color: c,fontWeight: FontWeight.w700,fontSize: 12,letterSpacing: 0.5,height: 16,),
    textAlign: a,
  );
}
Widget LabelTxtM(String s,{Color c = colorTxt,TextAlign a = TextAlign.start}){
  return Text(s,style: TextStyle(color: c,fontWeight: FontWeight.w500,fontSize: 12,letterSpacing: 0.5,height: 16,),
    textAlign: a,
  );
}
Widget LabelTxtS(String s,{Color c = colorTxt,TextAlign a = TextAlign.start}){
  return Text(s,style: TextStyle(color: c,fontWeight: FontWeight.w500,fontSize: 11,letterSpacing: 0.5,height: 16,),
    textAlign: a,
  );
}

//Widget組件區
Widget Space({double d = 10}){
  return Container(
    height: d,
    width: d,
  );
}

Widget Btn(Widget widget,VoidCallback func){
  return ElevatedButton(onPressed: func, child: widget,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        elevation: MaterialStateProperty.all(0.0),//去除陰影顏色才不會變色
      )
  );
}

Widget Ex(Widget w,{int f = 1}){
  return Expanded(child: w,flex: f,);
}

Widget Padd(Widget w,{double t = 4.0,double b = 4.0,double l = 4.0,double r = 4.0,}){
  return Padding(padding: EdgeInsets.only(top: t,bottom: b,left: l,right: r),child: w,);
}

Widget Underscore({Color c = Colors.grey,double h = 1}){
  return Container(height: h,color: c,);
}

Widget ImgAssetWidget(String imgPath){
  return Image.asset(imgPath,fit: BoxFit.contain,);
}

/*extension ContetExt on BuildContext{

  goto (Widget w,{bool r = false}){
    if(r){
      Navigator.of(this).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> w),(route) => false);
    }
    Navigator.of(this).push(MaterialPageRoute(builder: (context)=> w));
  }

  pop(dynamic v,{int cnt  = 0}){
    if(cnt == 0){
      Navigator.of(this).pop(v);
    }
    else{
      Navigator.of(this).popUntil((_) => cnt-- <= 0);
    }
  }

  goAnim(Widget w)async{
    await Navigator.of(this).push(PageRouteBuilder(
        pageBuilder: (context, anim1, anim2) => w,
        transitionsBuilder: (context, animation, secondaryAnimation,child){
          var begin = Offset(0.0, 1.0);
          var end = Offset.zero;
          var curve = Curves.ease;
          var tween = Tween(begin: begin,end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        }
    ));
  }

}*/

pageGo(PageController pageController,int p){
  pageController.animateToPage(p, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
}

pageBack(PageController pageController,int p){
  pageController.animateToPage(p, duration: Duration(milliseconds: 500), curve: Curves.easeOut);
}


//轉圈圈特效
class CustomCircularProgressIndicator extends StatelessWidget {
  final double size;
  final Color color;

  const CustomCircularProgressIndicator({Key? key, required this.size, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CircularProgressIndicator(
        strokeWidth: 5, // 設置指示器的寬度
        valueColor: AlwaysStoppedAnimation<Color>(color), // 設置指示器的顏色
      ),
    );
  }
}

routeGo(String routeName,BuildContext context,{bool r = false}){
  if(r){
    Navigator.of(context).pushReplacementNamed(routeName);
  }
  Navigator.of(context).pushNamed(routeName);
}

routeBack(String routeName,BuildContext context){
  Navigator.of(context).pushNamed(routeName);
}

routeHome(BuildContext context){
  Navigator.of(context).pushNamed("");
}


//以下應該用不太到
class AdaptiveFontSize {
  static double getFontSize(BuildContext context, double baseFontSize) {
    double screenWidth = MediaQuery.of(context).size.width;
    const double baseScreenWidth = 375.0; // Standard screen width
    double scaleFactor = screenWidth / baseScreenWidth;//fem
    return baseFontSize * scaleFactor;
  }
}