import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ilunch/model/buyer_user_model.dart';
import 'package:ilunch/pages/cliente/loja_page.dart';
import 'package:ilunch/themes/app_themes.dart';

import '../themes/app_themes.dart';

class HomeItemVendedor extends StatelessWidget {
  final BuyerUserModel vendedor;
  const HomeItemVendedor({Key? key, required this.vendedor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              if (vendedor.username == 'Divina Picanha') {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Loja()));
              }
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    vendedor.image,
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          vendedor.username,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.verified,
                          color: Appthemes.primary,
                          size: 18,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          vendedor.stars,
                          style: GoogleFonts.poppins(),
                        ),
                        Icon(
                          Icons.star_rate_rounded,
                          color: Color(0xFFFFF9B405),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              color: Appthemes.primary,
            ),
          )
        ],
      ),
    );
  }
}
