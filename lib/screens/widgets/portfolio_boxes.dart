import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:web_project/core/data/portfolio_images.dart';

class PortfolioBoxes extends StatelessWidget {
  PortfolioBoxes({Key? key, required this.height}) : super(key: key);

  double height;
  PortfolioImages portfolioImages = PortfolioImages();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * height,
      width: double.infinity,
      child: GridView.custom(
        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          repeatPattern: QuiltedGridRepeatPattern.inverted,
          pattern: [
            const QuiltedGridTile(2, 2),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 2),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
            (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Scaffold(
                          body: Center(
                            child: Image.asset(
                              portfolioImages.images[index],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          portfolioImages.images[index],
                        ),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
            childCount: portfolioImages.images.length),
      ),
    );
  }
}
