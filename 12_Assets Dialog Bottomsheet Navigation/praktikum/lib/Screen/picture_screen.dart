import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:praktikum/Screen/new_screen.dart';
import 'package:praktikum/model/drawer.dart';

// class PictureScreen extends StatelessWidget {
//   const PictureScreen({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Picture'),
//       ),
//       body: StaggeredGridView.countBuilder(
//         crossAxisCount: 2,
//         itemCount: 6,
//         itemBuilder: (BuildContext context, int index) {
//           return Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(8.0),
//               image: DecorationImage(
//                 image: AssetImage('assets/image${index + 1}.jpg'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           );
//         },
//         staggeredTileBuilder: (int index) =>
//             StaggeredTile.count(1, index.isEven ? 1.2 : 1),
//         mainAxisSpacing: 8.0,
//         crossAxisSpacing: 8.0,
//       ),
//     );
//   }
// }

class PictureScreen extends StatelessWidget {
  const PictureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Picture'),
      ),
      drawer: const MyDrawer(),
      body: Container(
        margin: const EdgeInsets.all(12),
        child: alignedLayout(context),
      ),
    );
  }

  Widget alignedLayout(BuildContext context) {
    return AlignedGridView.count(
      scrollDirection: Axis.vertical,
      crossAxisSpacing: 8,
      mainAxisSpacing: 6,
      crossAxisCount: 2,
      itemCount: 6,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: InkWell(
            onTap: () {
              _showImageBottomSheet(context, 'assets/image${index + 1}.jpg');
            },
            child: Image.asset(
              'assets/image${index + 1}.jpg',
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}

void _showImageBottomSheet(BuildContext context, String imagePath) {
  // Extract the image name from the imagePath
  String imageName = imagePath.split('/').last;

  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
            height: 300, // Set the desired height
          ),
          const SizedBox(height: 16),
          Text(
            imageName, // Use the image name as the title
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Text('Additional information about the image goes here.'),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Pass the selected image path to EmptyScreen and navigate to it
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EmptyScreen(
                        selectedImagePath: imagePath,
                      ),
                    ),
                  );
                },
                child: const Text('Yes'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('No'),
              )
            ],
          ),
        ],
      );
    },
  );
}


