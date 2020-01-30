import 'package:flutter/material.dart';
import 'text.dart';
import 'package:flutter_svg/flutter_svg.dart';


class RoundedButton extends StatelessWidget {
  const RoundedButton({ this.onpressed, this.text});
  final Function onpressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
      child: Material(
        elevation: 5.0,
        color: Color(0xff00aeef),
        borderRadius: BorderRadius.circular(10.0),
        child: MaterialButton(
            onPressed: onpressed,
            minWidth: double.infinity,
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Lato'
              ),
            ),
          ),
      ),
    );
  }
}


class Button3 extends StatelessWidget {
  const Button3({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: OutlineButton(
        borderSide: BorderSide(color: white),
        onPressed: () {},
        child: Text(
          button3,
          style: style(),
        ),
        disabledBorderColor: white,
        highlightedBorderColor: white,
        focusColor: white,
        color: white,
        highlightColor: white,
        splashColor: white,
      ),
    );
  }
}


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(  
      direction: Axis.horizontal,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SvgPicture.asset(
              'assets/icons/icon-4.svg',
              height: 35,
              fit: BoxFit.fill,
              color: white,
            ),
            Text(
              'Network',
            )
          ],
        ),
        SizedBox(
          width: 45,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SvgPicture.asset(
              'assets/icons/icon-3.svg',
              color: white,
            ),
            Text(
              'Messsages',
            )
          ],
        ),
        SizedBox(
          width: 45,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SvgPicture.asset(
              'assets/icons/icon-2.svg',
              color: white,
            ),
            Text(
              'Contact',
            )
          ],
        ),
        SizedBox(
          width: 45,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SvgPicture.asset(
              'assets/icons/icon-1.svg',
              color: white,
            ),
            Text(
              'Library',
            )
          ],
        )
      ],
    );
  }
}
