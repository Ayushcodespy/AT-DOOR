import 'package:atdoor/common/widgets/appbar/appbar.dart';
import 'package:atdoor/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:atdoor/common/widgets/layouts/grid_layout.dart';
import 'package:atdoor/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:atdoor/common/widgets/texts/section_heading.dart';
import 'package:atdoor/features/shop/screens/store/widgets/category_tab.dart';
import 'package:atdoor/utils/constants/colors.dart';
import 'package:atdoor/utils/constants/image_strings.dart';
import 'package:atdoor/utils/constants/sizes.dart';
import 'package:atdoor/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../common/widgets/brands/brand_show_case.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        /// --- AppBar
        appBar: TAppBar(
          title: const Text('Store', style: TextStyle(fontSize: 24)),
          actions: [
            TCartCounterIcon(
                iconColor: dark ? TColors.white : TColors.dark,
                onPressed: () {})
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: THelperFunctions.isDarkMode(context)
                      ? TColors.black
                      : TColors.white,
                  expandedHeight: 440,

                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        /// -- Search bar
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        const TSearchContainer(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),

                        ///-- Featured Brands
                        TSectionHeading(
                            title: 'Featured Brands', onPressed: () {}),
                        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                        /// --- Brand Grid
                        TGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 70,
                            itemBuilder: (_, index) {
                              return const TBrandCard(
                                showBorder: false,
                              );
                            })
                      ],
                    ),
                  ),

                  /// --- Tabs
                  bottom: const TTabBar(
                    tabs: [
                      Tab(child: Text('Sport')),
                      Tab(child: Text('Electronics')),
                      Tab(child: Text('Furniture')),
                      Tab(child: Text('Clothes')),
                      Tab(child: Text('Cosmetics')),
                    ],
                  ),
                )
              ];
            },

            /// Body
            body: const TabBarView(
               children: [CategoryTab(), CategoryTab(), CategoryTab(), CategoryTab(), CategoryTab()]
            )
        ),
      ),
    );
  }
}
