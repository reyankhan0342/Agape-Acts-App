import 'package:agape_acts_app/custom_widgets/buttom_sheet.dart';
import 'package:agape_acts_app/provider/provider_class.dart';
import 'package:agape_acts_app/screens/home_screens/side_menu_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  final GlobalKey<SideMenuState> sideMenuState = GlobalKey<SideMenuState>();

  int value = 0;

  getVlaue(int x) {
    value = x;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SideMenu(
        inverse: false,
        closeIcon: Icon(null),
        menu: SideMenuList(),
        key: sideMenuState,
        type: SideMenuType.shrinkNSlide,
        background: Color(0xff233347),
        child: ChangeNotifierProvider(
          create: (context) => Provider_Class(),
          child: Consumer<Provider_Class>(builder: (context, provider, child) {
            return Scaffold(
                appBar: AppBar(
                  actions: [
                    IconButton(
                        onPressed: () {
                          ButtomSheet().showPersistentBottomSheet(context);
                        },
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ))
                  ],
                  centerTitle: true,
                  automaticallyImplyLeading: false,
                  backgroundColor: Color(0xffC60000),
                  title: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Notification',
                      style: TextStyle(
                          fontSize: size.width * 0.05,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'public',
                          color: Colors.white),
                    ),
                  ),
                  leading: Padding(
                      padding: EdgeInsets.only(top: 10, right: 15, left: 15),
                      child: GestureDetector(
                          onTap: () {
                            if (sideMenuState.currentState!.isOpened) {
                              sideMenuState.currentState!.closeSideMenu();
                            } else {
                              sideMenuState.currentState!.openSideMenu();
                            }
                          },
                          child: Image.asset(
                            'assets/icons/img_5.png',
                            width: size.width * 0.1,
                          ))),
                ),
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Today',
                        style: TextStyle(
                          fontFamily: 'roboto1',
                          fontSize: size.width * 0.04,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                image: DecorationImage(
                                  image: AssetImage('assets/icons/img_25.png'),
                                ),
                              ),
                            ),
                            title: Text(
                              'David Warner',
                              style: TextStyle(
                                fontFamily: 'medium',
                                color: Color(0xff424242),
                                fontSize: size.width * 0.03,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            subtitle: Row(
                              children: [
                                Text(
                                  'Your Friend: ',
                                  style: TextStyle(
                                    fontFamily: 'medium',
                                    color: Color(0xff424242),
                                    fontSize: size.width * 0.03,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text('0hr ago',
                                    style: TextStyle(
                                      fontFamily: 'medium',
                                      color: Color(0xff969696),
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ],
                            ),
                            trailing: Container(
                              width: 141.w,
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 60.w,
                                      height: 20.h,
                                      margin:
                                          EdgeInsets.only(left: 8, right: 8),
                                      decoration: BoxDecoration(
                                          color: Color(0xffC60000),
                                          border: Border.all(
                                            color: Color(0xffC4C4C4),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Center(
                                        child: Text(
                                          'Accept',
                                          style: TextStyle(
                                            fontFamily: 'roboto1',
                                            color: Colors.white,
                                            fontSize: size.width * 0.03,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 60.w,
                                      height: 20.h,
                                      margin: EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Color(0xffC4C4C4),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Center(
                                        child: Text(
                                          'Cancel',
                                          style: TextStyle(
                                            fontFamily: 'roboto1',
                                            color:
                                                Colors.black.withOpacity(0.7),
                                            fontSize: size.width * 0.03,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ));
          }),
        ));
  }
}
