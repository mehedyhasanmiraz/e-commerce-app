import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text_widget/vertical_image_text_widget.dart';
import '../../../../../utils/contants/image_string.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          itemCount: 6,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return TVerticalImageText(image: TImage.showIcon, title: 'Shoes',onTap: (){},);
          }),
    );
  }
}