// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
//
// import '../common/models/vo_catalog.dart';
// import '../common/w_bottom_bar.dart';
// import '../inherited_widget/f_cart.dart';
// import '../inherited_widget/f_catalog.dart';
// import 'f_cart.dart';
// import 'f_catalog.dart';
//
// // 상태 관리 - StatefulWidget 활용
// // 상태가 있는 위젯 생성
// class HomeScreen1 extends StatefulWidget {
//   const HomeScreen1({super.key});
//
//   @override
//   State<HomeScreen1> createState() => _HomeScreen1State();
// }
//
// class _HomeScreen1State extends State<HomeScreen1> {
//   // 현재 선택된 index
//   int currentIndex = 0;
//   // 선택된 카탈로그 정보를 담을 수 있는 자료 구조 선언
//   List<Catalog> catalogList = [];
//
//   // 샘플 데이터 (local DB, 통신)
//   late List<Catalog> responseListData;
//
//   // 메모리에 올라갈 때 딱 한번만 초기화 되는 부분
//   @override
//   void initState() {
//     super.initState();
//     // initState <-- 위젯을 업데이트 하는 코드를 사용하면 안된다. (버그발생)
//     // 가능한 데이터 초기화 처리만 사용하자.
//     responseListData = catalogListSample;
//   }
//
//   // 콜백 받을 메서드 선언
//   void onPressedCatalog(Catalog catalog) {
//     print("여기 HomeScreen 위젯 이벤트 발생");
//     // 콜백이 일어 나면 UI 업데이트 처리
//     setState(() {
//       if (catalogList.contains(catalog)) {
//         // 리스트에 object 포함 하고 있다면 삭제 처리
//         catalogList.remove(catalog);
//       } else {
//         catalogList.add(catalog); // add 처리
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     //
//     print("HomeScreen build() 함수 호출");
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('My Catalog'),
//       ),
//       body: IndexedStack(
//         index: currentIndex,
//         children: [
//           CatalogWidget(
//             responseListData: responseListData,
//             cartCatalogList: catalogList,
//             onPressedCatalog: onPressedCatalog,
//           ),
//           CartWidget(
//             cartList: catalogList,
//             onPressedCatalog: onPressedCatalog,
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomBar(
//         currentIndex: currentIndex,
//         cartTotal: '${catalogList.length}',
//         onTap: (index) {
//           setState(() {
//             currentIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }