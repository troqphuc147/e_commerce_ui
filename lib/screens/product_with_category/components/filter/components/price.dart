import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class PriceFilter extends StatefulWidget {
  const PriceFilter({Key? key}) : super(key: key);

  @override
  _PriceFilterState createState() => _PriceFilterState();
}

class _PriceFilterState extends State<PriceFilter> {
  double min = 58;
  double max = 142;
  late RangeValues _values;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _values = RangeValues(min, max);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),),
          child: Text(
            "Price range",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                fontWeight: FontWeight.w600),
          ),
        ),
        Container(
            height: getProportionateScreenWidth(80),
            color: Colors.white,
            margin: EdgeInsets.only(top: getProportionateScreenWidth(15)),
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10)),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenWidth(15),
                      horizontal: getProportionateScreenWidth(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "\$" + min.toInt().toString(),
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(14),
                        ),
                      ),
                      Text(
                        "\$" + max.toInt().toString(),
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(14),
                        ),
                      ),
                    ],
                  ),
                ),
                RangeSlider(
                  inactiveColor: kPrimarySecondColor,
                  activeColor: kPrimaryColor,
                  min: 0,
                  max: 200,
                  values: _values,
                  onChanged: (RangeValues values) {
                    setState(() {
                      if (values.end - values.start >= 20) {
                        _values = values;
                      } else {
                        if (_values.start == values.start) {
                          _values =
                              RangeValues(_values.start, _values.start + 20);
                        } else {
                          _values = RangeValues(_values.end - 20, _values.end);
                        }
                      }
                      min = values.start;
                      max = values.end;
                    });
                  },
                ),
              ],
            )),
      ],
    );
  }
}
