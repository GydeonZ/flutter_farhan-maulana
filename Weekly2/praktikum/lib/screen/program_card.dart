import 'package:flutter/material.dart';

Widget programListCard(BuildContext context) {
  return Padding(
    padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 220,
          width: 180,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                )
              ]),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
            child: Column(
              children: [
                Container(
                  child: Image.asset(
                    'lib/assets/images/code.png',
                    height: 50,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Immersive Program',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                // const SizedBox(height: 5),
                const Text(
                  'Program pelatihan coding bootcamp intensif bagi kamu yang pemula, baik dengan latar belakang IT maupun Non-IT, untuk menjadi seorang Software Engineer profesional dalam waktu 9 Minggu',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 220,
          width: 180,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                )
              ]),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
            child: Column(
              children: [
                Container(
                  child: Image.asset(
                    'lib/assets/images/code.png',
                    height: 50,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Immersive Program',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                // const SizedBox(height: 5),
                const Text(
                  'Program pelatihan coding bootcamp intensif bagi kamu yang pemula, baik dengan latar belakang IT maupun Non-IT, untuk menjadi seorang Software Engineer profesional dalam waktu 9 Minggu',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
