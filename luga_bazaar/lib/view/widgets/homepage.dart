import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luga_bazaar/view/widgets/newyearproduct.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Carousel slider starts here
          SizedBox(
            height: 200,
            width: Get.size.width,
            child: CarouselSlider(
              options: CarouselOptions(height: 400.0, autoPlay: true),
              items: [
                "https://simage-kr.uniqlo.com/display/corner/2162/PC_L1_UT_1_220325.jpg",
                "https://simage-kr.uniqlo.com/display/corner/2162/PC_L1_NEWSEASON_1_220325.jpg",
                "https://simage-kr.uniqlo.com/display/corner/2162/PC_L1_CLEAN_4_220325.jpg",
                "https://simage-kr.uniqlo.com/display/corner/2162/PC_L1_BOTTOMS_2_220318.jpg",
                "https://simage-kr.uniqlo.com/display/corner/2162/PC_L1_UT_1_220225.jpg"
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: const BoxDecoration(color: Colors.amber),
                      child: Image.network(
                        i,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          // Carousel slider ends here

          // Listile begins here
          ListTile(
            title: Text(
              "New Year's Offer ",
              style: Theme.of(context).textTheme.headline6,
            ),
            subtitle: const Text(
              "Get up to 50% discount",
              style: TextStyle(color: Colors.red),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ),
          // Listile ends here

          // This is product and its price
          SizedBox(
            child: SizedBox(
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 180,
                        width: Get.size.width,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            NewyearProductWidget(
                              image:
                                  "https://simage-kr.uniqlo.com/display/corner/2161/445000_342N249A_59_A1_S.jpg",
                              title: "Unisex Tee",
                              price: "Rs 1500",
                            ),
                            NewyearProductWidget(
                              image:
                                  "https://simage-kr.uniqlo.com/goods/31/14/26/98/444636_COL_COL64_276.jpg",
                              title: "Men Casual Shirt",
                              price: "Rs 3000",
                            ),
                            NewyearProductWidget(
                              image:
                                  "https://simage-kr.uniqlo.com/goods/31/14/06/89/441745_COL_COL67_276.jpg",
                              title: "Regulal Fit Jeans",
                              price: "Rs 5000",
                            ),
                            NewyearProductWidget(
                              image:
                                  "https://simage-kr.uniqlo.com/goods/31/14/25/18/446846_COL_COL04_276.jpg",
                              title: "Rayon Blouse",
                              price: "Rs 2900",
                            ),
                            NewyearProductWidget(
                              image:
                                  "https://simage-kr.uniqlo.com/goods/31/14/25/23/448815_COL_COL69_1000.jpg",
                              title: "V-neck Blouse",
                              price: "Rs 2500",
                            ),
                            NewyearProductWidget(
                              image:
                                  "https://simage-kr.uniqlo.com/goods/31/14/30/02/444557_COL_COL69_276.jpg",
                              title: "Casual Coat",
                              price: "Rs 1500",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          //  This is end of product and its price

          //  Summer collectin listile begins here
          ListTile(
            title: Text(
              "Summer Collection ",
              style: Theme.of(context).textTheme.headline6,
            ),
            subtitle: const Text(
              "Feel Cool in this Summer",
              style: TextStyle(color: Colors.blue),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ),
          //  Summer collectin listile ends here

          // Summer collection product begins here
          SizedBox(
            height: 200,
            width: Get.size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                NewyearProductWidget(
                  image:
                      "https://lp2.hm.com/hmgoepprod?set=source[/f5/df/f5df542f5a43aa0dd75748ff06c485837bf3438d.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[z],hmver[2]&call=url[file:/product/main]",
                  title: "T shirt",
                  price: "Rs 2000",
                ),
                NewyearProductWidget(
                  image:
                      "https://lp2.hm.com/hmgoepprod?set=source[/69/df/69df76e908063b6b8aeaf70bad6c295c680a0cf7.jpg],origin[dam],category[men_shirts_casual],type[DESCRIPTIVESTILLLIFE],res[z],hmver[2]&call=url[file:/product/main]",
                  title: "T shirt",
                  price: "Rs 2000",
                ),
                NewyearProductWidget(
                  image:
                      "https://lp2.hm.com/hmgoepprod?set=source[/8a/27/8a27969a5c4b44f624aadd913e73ade87bef92a7.jpg],origin[dam],category[men_shirt_dressed_slimfit],type[DESCRIPTIVESTILLLIFE],res[z],hmver[2]&call=url[file:/product/main]",
                  title: "Casual Shirt",
                  price: "Rs 2000",
                ),
                NewyearProductWidget(
                  image:
                      "https://lp2.hm.com/hmgoepprod?set=source[/00/46/004666fd653f8da7715a8e6505ca7150cc68d48b.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
                  title: "Blich Skirt",
                  price: "Rs 2000",
                ),
                NewyearProductWidget(
                  image:
                      "https://lp2.hm.com/hmgoepprod?set=format%5Bwebp%5D%2Cquality%5B79%5D%2Csource%5B%2F96%2F4d%2F964d742dc79476e7926c4712353630f837465d89.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5B%5D%2Ctype%5BLOOKBOOK%5D%2Cres%5Bm%5D%2Chmver%5B1%5D&call=url%5Bfile%3A%2Fproduct%2Fmain%5D",
                  title: "T shirt",
                  price: "Rs 2000",
                ),
                NewyearProductWidget(
                  image:
                      "https://lp2.hm.com/hmgoepprod?set=format%5Bwebp%5D%2Cquality%5B79%5D%2Csource%5B%2Fd4%2F29%2Fd429c521bc81e8fa76765781f9d59b1e7f52cf89.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5B%5D%2Ctype%5BLOOKBOOK%5D%2Cres%5Bm%5D%2Chmver%5B2%5D&call=url%5Bfile%3A%2Fproduct%2Fmain%5D",
                  title: "Blouse",
                  price: "Rs 4000",
                ),
              ],
            ),
          )
          // Summer collection product begins here
        ],
      ),
    );
  }
}
