import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class ListOrderCategoryChips extends StatefulWidget {
  ListOrderCategoryChips({Key? key}) : super(key: key);

  @override
  State<ListOrderCategoryChips> createState() => _ListOrderCategoryChipsState();
}

class _ListOrderCategoryChipsState extends State<ListOrderCategoryChips> {
  List<String> listCate = ["Delivered", "Processing", "Cancelled"];
  List<bool> isSelected = [true, false, false];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: getProportionateScreenWidth(8),
        children: [
          ...List.generate(
              3,
              (index) => GestureDetector(
                onTap: (){
                  setState(() {
                    isSelected[index] = true;
                    if(index == 0)
                      {
                        isSelected[1] = false;
                        isSelected[2] = false;
                      }
                    if(index == 1)
                    {
                      isSelected[2] = false;
                      isSelected[0] = false;
                    }
                    if(index == 2)
                    {
                      isSelected[1] = false;
                      isSelected[0] = false;
                    }
                  });
                },
                child: Chip(
                    backgroundColor:
                        isSelected[index] ? Colors.black : kBackgroundColor,
                    label: SizedBox(
                      width: getProportionateScreenWidth(100),
                      child: Center(
                        child: Text(
                          listCate[index],
                          style: TextStyle(
                              color:
                                  isSelected[index] ? Colors.white : Colors.black,
                              fontSize: getProportionateScreenWidth(14)),
                        ),
                      ),
                    )),
              )),
        ],
      ),
    );
  }
}
