import 'package:flutter/material.dart';

class CharacterDetailsScreen extends StatelessWidget {
  final Map character;

  const CharacterDetailsScreen({super.key, required this.character});

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case "alive":
        return Colors.green;
      case "dead":
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character['name']),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                character['image'],
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              character['name'],
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.circle,
                  size: 14,
                  color: _getStatusColor(character['status']),
                ),
                const SizedBox(width: 6),
                Text(
                  character['status'],
                  style: TextStyle(
                    fontSize: 18,
                    color: _getStatusColor(character['status']),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            _buildInfoRow("Species", character['species']),
            _buildInfoRow("Gender", character['gender']),
            _buildInfoRow("Origin", character['origin']['name']),
            _buildInfoRow("Location", character['location']['name']),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Text(
            "$title: ",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 18),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
