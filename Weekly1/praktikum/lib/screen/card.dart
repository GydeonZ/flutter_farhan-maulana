import 'package:flutter/material.dart';

class MaterialCard extends StatelessWidget {
  const MaterialCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Code Competence',
            style: TextStyle(
              fontFamily: 'Inter',
              color: Color(0xFF101518),
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 24,
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
                    child: Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(
                        maxWidth: 530,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 8,
                            color: Color(0x33000000),
                            offset: Offset(0, 1),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color(0xFFF5FBFB),
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 16, 12),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF5FBFB),
                                      borderRadius: BorderRadius.circular(8),
                                      shape: BoxShape.rectangle,
                                    ),
                                    alignment: const AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              2, 2, 2, 2),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(6),
                                        child: Image.network(
                                          'https://instagram.fkno5-1.fna.fbcdn.net/v/t51.2885-15/332018718_1178396849502546_3759471337708048234_n.webp?stp=dst-jpg_e35&_nc_ht=instagram.fkno5-1.fna.fbcdn.net&_nc_cat=106&_nc_ohc=34kmw8ysDdkAX8YQwVa&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MzA1NjcyODU0NDc2OTYxMTU4MA%3D%3D.2-ccb7-5&oh=00_AfCVEuHX7MSaBsgyoiEB7Q6dWTPDt7wOo35WvmGZKlmUeA&oe=651D2A33&_nc_sid=ee9879',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'GydeonZ',
                                            style: TextStyle(
                                              fontFamily: 'Inter',
                                              color: Color(0xFF101518),
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 4, 0, 0),
                                            child: Text(
                                              'Farhan Maulana',
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                color: Color(0xFF57636C),
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.close_rounded,
                                      color: Color(0xFF57636C),
                                      size: 24,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Divider(
                              height: 12,
                              thickness: 1,
                              indent: 16,
                              endIndent: 16,
                              color: Color(0xFFF5FBFB),
                            ),
                            const Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 12, 16, 16),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Flutter Learning Course',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      color: Color(0xFF101518),
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 0, 0),
                                    child: Text(
                                      'Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        color: Color(0xFF57636C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24, 0, 24, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 12, 0),
                                    child: TextButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        padding: MaterialStateProperty.all(
                                          const EdgeInsets.symmetric(
                                              horizontal: 20.0),
                                        ),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                        textStyle: MaterialStateProperty.all(
                                          const TextStyle(
                                            fontFamily: 'Inter',
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        elevation: MaterialStateProperty.all(0),
                                        side: MaterialStateProperty.all(
                                          const BorderSide(
                                            color: Color(0xFFF5FBFB),
                                            width: 1,
                                          ),
                                        ),
                                        shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                          ),
                                        ),
                                      ),
                                      child: const Text('Cancel'),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              const Color(0xFF06D5CD)),
                                      elevation: MaterialStateProperty.all(2),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                        ),
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: Text(
                                        'Start Course',
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}