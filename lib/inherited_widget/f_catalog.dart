import 'package:class_statement/common/w_catalog_item.dart';
import 'package:class_statement/inherited_widget/state_management/inh_cart_widget.dart';
import 'package:flutter/material.dart';

import '../common/models/vo_catalog.dart';

class CatalogWidget extends StatelessWidget {
  // // 통신을 통해 받은 데이터가 필요함
  // final List<Catalog> responseListData;
  // // 내 카드에 담은 데이터 정보 필요
  // final List<Catalog> cartCatalogList;
  // final void Function(Catalog catalog) onPressedCatalog;

  // const CatalogWidget(
  //     {super.key,
  //       required this.responseListData,
  //       required this.cartCatalogList,
  //       required this.onPressedCatalog});



  @override
  Widget build(BuildContext context) {
    print("여기는 CatalogWidget Build 함수 실행");
    // 컨텍스트를 통해서 공유 상태 데이터에 접근
    InheritedCartWidget inheritedCartWidget = InheritedCartWidget.of(context)!;

    return ListView.builder(
      itemCount: catalogListSample.length,
      itemBuilder: (context, index) {
        // 넘겨 받은 리스트 중에 하나의 오브젝트이다.
        Catalog catalog = catalogListSample[index];
        return CatalogItem(
            catalog: catalog,
            isInCart: catalogListSample.contains(catalog),
            onPressedCatalog: inheritedCartWidget.onPressedCatalog);
      },
    );
  }
}