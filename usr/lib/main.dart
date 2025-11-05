import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Star',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.deepPurple,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: const Color(0xFF121212),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E1E),
          elevation: 0,
        ),
      ),
      home: const VideoEditorScreen(),
    );
  }
}

class VideoEditorScreen extends StatefulWidget {
  const VideoEditorScreen({super.key});

  @override
  State<VideoEditorScreen> createState() => _VideoEditorScreenState();
}

class _VideoEditorScreenState extends State<VideoEditorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Star'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              // TODO: Implement save functionality
            },
            tooltip: 'Save Project',
          ),
          IconButton(
            icon: const Icon(Icons.ios_share),
            onPressed: () {
              // TODO: Implement export functionality
            },
            tooltip: 'Export Video',
          ),
        ],
      ),
      body: Column(
        children: [
          // Video Preview Area
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.black,
              alignment: Alignment.center,
              child: const Icon(Icons.play_circle_outline, color: Colors.white54, size: 80),
            ),
          ),
          // Toolbar
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            color: const Color(0xFF1E1E1E),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildToolbarButton(Icons.movie_creation, 'Media'),
                _buildToolbarButton(Icons.text_fields, 'Text'),
                _buildToolbarButton(Icons.music_note, 'Audio'),
                _buildToolbarButton(Icons.filter_vintage, 'Effects'),
                _buildToolbarButton(Icons.layers, 'Layers'),
              ],
            ),
          ),
          // Timeline Area
          Expanded(
            flex: 3,
            child: Container(
              color: const Color(0xFF2C2C2C),
              child: const Center(
                child: Text(
                  'Timeline View',
                  style: TextStyle(color: Colors.white54),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildToolbarButton(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(icon, color: Colors.white),
          onPressed: () {
            // TODO: Implement button functionality
          },
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
      ],
    );
  }
}
