import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Questions"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Menjaga konten di tengah
          crossAxisAlignment: CrossAxisAlignment.stretch, // Membuat lebar tombol penuh
          children: [
            // Tampilkan pertanyaan
            Text(
              questions[0].text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center, // Membuat teks pertanyaan di tengah
            ),
            const SizedBox(height: 20),
            // Tampilkan pilihan jawaban
            ...questions[0].jawaban.map((jawaban) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0), // Memberikan jarak antar tombol
                child: ElevatedButton(
                  onPressed: () {
                    // Logika untuk memilih jawaban
                    print("Jawaban yang dipilih: $jawaban");
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50), // Membuat panjang tombol sama
                  ),
                  child: Text(jawaban),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
