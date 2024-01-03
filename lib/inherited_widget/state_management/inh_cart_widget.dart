import 'package:class_statement/common/models/vo_catalog.dart';
import 'package:flutter/material.dart';

// 1. 공유상태로 관리할 데이터를 결정한다 --> cart 데이터

// 규칙 1. 공유상태로 만들 데이터를 InheritedWidget 상속 받아야 한다.
class InheritedCartWidget extends InheritedWidget {
  // 카드에 담긴 리스트 데이터를 관리
  final List<Catalog> cartList;
  // 콜백 함수 필요
  final void Function(Catalog catalog) onPressedCatalog;

  const InheritedCartWidget(
      {required this.cartList,
        required this.onPressedCatalog,
        required super.child});

  // 외부에서 쉽게 접근할 수 있는 sataic 메서드를 만들어 준다.
  // 개발모드에 사용되는 코드
  // static InheritedCartWidget of(BuildContext context) {
  //   final InheritedCartWidget? result =
  //       context.dependOnInheritedWidgetOfExactType<InheritedCartWidget>();
  //   assert(result != null, "Not found InheritedCartWidget in context");
  //   return result!;
  // }

  // 릴리즈 모드
  static InheritedCartWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedCartWidget>();
  }

  // 위젯 트리에서 해당 위젯이 업데이트 될때마다 호출 되는 메서드
  // 위젯 트리가 다시 빌드할 필요가 있는지 알려 줍니다.
  // true, false, true --> 재빌드, false - 스탑
  @override
  bool updateShouldNotify(covariant InheritedCartWidget oldWidget) {
    print('호출 시점 확인');
    print('올드 위젯 : ${oldWidget.hashCode}');
    print('새롭게 빌드된 위젯 : ${cartList.hashCode}');
    print('현재 갯수 : ${cartList.length} / ${oldWidget.cartList.length}');
    return cartList != oldWidget.cartList;
    // return true;
  }
}