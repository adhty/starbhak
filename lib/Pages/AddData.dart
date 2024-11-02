import 'package:flutter/material.dart';
import 'package:starbahk_mart/widgets/AppBarWidget2.dart';
import 'package:image_picker/image_picker.dart';

class Adddata extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductForm(),
    );
  }
}
class ProductForm extends StatefulWidget {
  @override
  _ProductFormState createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  String _katagori = 'Makanan';
  XFile? _imageFile;

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? selectedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = selectedImage;
    });
  }
      @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarwidget2(),

          Padding(padding: EdgeInsets.all(16),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10, 
                    spreadRadius: 2,
                    offset: Offset(0, 4), 
                  ),
                ]
              ),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Nama Produk
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Nama Produk',
                        hintText: 'Masukan Nama Produk',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                        )
                      ),
                    ),
                    SizedBox(height: 20),

                    // Harga Field
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Harga',
                      hintText: 'Masukan Harga',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Kategori Produk Dropdown
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Kategori produk',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    value: 'Makanan',
                    items: [
                      DropdownMenuItem(
                        value: 'Makanan',
                        child: Text('Makanan'),
                      ),
                      DropdownMenuItem(
                        value: 'Minuman',
                        child: Text('Minuman'),
                        
                      ),
                    ],
                    onChanged: (value) {
                      // Handle dropdown change
                    },
                  ),
                  SizedBox(height: 16),

                  // Image Picker Field (placeholder)
                  GestureDetector(
              onTap: _pickImage,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_imageFile == null ? 'Choose file' : 'Image Selected'),
                  ],
                ),
              ),
            ),
                  SizedBox(height: 16),

                  //Submit
                   ElevatedButton(
                    onPressed: () {
                      // Handle form submission
                    },
                    style: ElevatedButton.styleFrom(
                      iconColor: Colors.blue,
                      padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text('Submit', style: TextStyle(fontSize: 16)),
                  ),

                    
                  ],
                ),

                  
            ),
          ),
          ),
          )
        ],
     ),
);
}
}