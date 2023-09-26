import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController jobTitleController = TextEditingController();
  TextEditingController aboutMeController = TextEditingController();
  File? _image; // Stores the selected/captured image
  List<PortfolioItem> portfolioItems = [];

  Future<void> _getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  void _addPortfolioItem() {
    setState(() {
      portfolioItems.add(
        PortfolioItem(
          title: '',
          description: '',
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: GestureDetector(
                onTap: _getImage,
                child: CircleAvatar(
                  backgroundImage:
                      _image != null ? FileImage(_image!) : null,
                  radius: 60,
                ),
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextFormField(
              controller: jobTitleController,
              decoration: InputDecoration(labelText: 'Job Title'),
            ),
            SizedBox(height: 16),
            Text(
              'About Me',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            TextFormField(
              controller: aboutMeController,
              maxLines: 4,
              decoration: InputDecoration(
                labelText: 'About Me',
                hintText: 'Tell us about yourself...',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Portfolio',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Column(
              children: portfolioItems.map((item) {
                return PortfolioItemWidget(
                  portfolioItem: item,
                  onImageChanged: (image) {
                    // Handle the image change for this specific item
                    item.imageFile = image;
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _addPortfolioItem,
              child: Text('Add Portfolio Item'),
            ),
            ElevatedButton(
              onPressed: () {
                // Save the edited details and navigate back to the profile page
                // Add your save logic here
                Navigator.pop(context);
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    jobTitleController.dispose();
    aboutMeController.dispose();
    super.dispose();
  }
}

class PortfolioItem {
  String title;
  String description;
  File? imageFile; // Stores the selected image for this specific item

  PortfolioItem({
    required this.title,
    required this.description,
    this.imageFile,
  });
}

class PortfolioItemWidget extends StatefulWidget {
  final PortfolioItem portfolioItem;
  final Function(File?) onImageChanged;

  PortfolioItemWidget({required this.portfolioItem, required this.onImageChanged});

  @override
  _PortfolioItemWidgetState createState() => _PortfolioItemWidgetState();
}

class _PortfolioItemWidgetState extends State<PortfolioItemWidget> {
  late File? _image; // Stores the selected image

  Future<void> _getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        widget.portfolioItem.imageFile = _image; // Update the image for this specific item
        widget.onImageChanged(_image); // Notify the parent widget about the image change
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 16),
        TextFormField(
          controller: TextEditingController(text: widget.portfolioItem.title),
          decoration: InputDecoration(labelText: 'Portfolio Title'),
          onChanged: (value) {
            widget.portfolioItem.title = value;
          },
        ),
        TextFormField(
          controller: TextEditingController(text: widget.portfolioItem.description),
          decoration: InputDecoration(labelText: 'Portfolio Description'),
          onChanged: (value) {
            widget.portfolioItem.description = value;
          },
        ),
        SizedBox(height: 8),
        GestureDetector(
          onTap: () {
            _getImage(); // Launch the gallery to select an image
          },
          child: Container(
            color: Colors.grey[200],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.camera_alt),
                  SizedBox(width: 8),
                  Text('Add Image for Portfolio Item'),
                ],
              ),
            ),
          ),
        ),
        if (_image != null)
          SizedBox(
            height: 200,
            child: Image.file(_image!), // Display the selected image
          ),
      ],
    );
  }
}
