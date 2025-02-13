import 'package:flutter/material.dart';
import 'package:panorama/panorama.dart';

class PanoramaPage extends StatefulWidget {
  const PanoramaPage({super.key});

  @override
  _PanoramaPageState createState() => _PanoramaPageState();
}

class _PanoramaPageState extends State<PanoramaPage> {
  final List<String> _sceneImages = [
    'assets/scene_1.jpg',
    'assets/scene_2.jpg',
    'assets/scene_3.jpg',
    'assets/scene_4.jpg',
    'assets/scene_5.jpg',
  ];

  final List<List<CustomHotspot>> _sceneHotspots = [
    [
      // Scene 1
      CustomHotspot(
          yaw: -9.8,
          pitch: -17.5,
          title: "GONG",
          description:
              "Gong merupakan alat musik yang berbentuk bulat terbuat dari perunggu."),
      CustomHotspot(
          yaw: -47.8,
          pitch: -4.2,
          title: "EMPAR",
          description:
              "Empar adalah tameng yang terbuat dari kulit menjangan atau kerbau."),
      CustomHotspot(
          yaw: 25.8,
          pitch: -18.9,
          title: "SERUNAI",
          description:
              "Serunai merupakan alat musik tiup yang terbuat dari daun lontar."),
      CustomHotspot(
          yaw: -50.1,
          pitch: -9.4,
          title: "PABULANG",
          description:
              "Pabulang adalah pakaian berwarna merah dan tebal digunakan di kepala dan badan bagian\natas yang fungsinya unuk melindungi para pemain dari pukulan lawan."),
    ],
    // Scene 2
    [
      CustomHotspot(
          yaw: 141.3,
          pitch: -6.7,
          title: "EMPAR",
          description:
              "Empar adalah tameng yang terbuat dari kulit menjangan atau kerbau."),
      CustomHotspot(
          yaw: 139.0,
          pitch: -21.8,
          title: "PABULANG",
          description:
              "Pabulang adalah pakaian berwarna merah dan tebal digunakan di kepala dan badan bagian\natas yang fungsinya unuk melindungi para pemain dari pukulan lawan."),
      CustomHotspot(
          yaw: 147.4,
          pitch: -12.8,
          title: "WE",
          description:
              "We adalah senjata berupa tongkat yang terbuat dari bambu."),
      CustomHotspot(
          yaw: 146.1,
          pitch: -1.9,
          title: "BENDERA",
          description:
              "Bendera adalah alat yang digunakan oleh pemain saat memenangkan permainan."),
      CustomHotspot(
          yaw: -112.9,
          pitch: -11.6,
          title: "GENANG",
          description:
              "Genang merupakan alat musik pukul yang terbuat dari kulit kerbau dan kayu."),
      CustomHotspot(
          yaw: -119.7,
          pitch: -11.3,
          title: "GONG",
          description:
              "Gong merupakan alat musik pukul yang berbentuk bulat terbuat dari perunggu."),
      CustomHotspot(
          yaw: 55.6,
          pitch: -7.4,
          title: "Daftar Para Bupati Kabupaten Sumbawa",
          description:
              "Daftar para Bupati Kabupaten Sumbawa,Kemarin dan Hari ini."),
      CustomHotspot(
          yaw: -2.7,
          pitch: -4.9,
          title: "Senjata Tajam",
          description: "Senjata tajam tradisional."),
    ],
    // Scene 3
    [
      CustomHotspot(
          yaw: 0.0,
          pitch: -1.8,
          title: "Para Ketua DPRD Kabupaten Sumbawa",
          description: "Daftar para ketua DPRD kabupaten sumbawa."),
      CustomHotspot(
          yaw: -74.9,
          pitch: -8.7,
          title: "Duplikat Al-Qur'an Tulis Tangan",
          description:
              "Al-Qur'an tulisan tangan yang dihadiahkan kehadapan Sultan Jalaluddin bin Muhammad Qaimuddin pada tahun\n1307 H(1886 M) Al-Qur'an ini dari Syeh Ahmad Abdul Faqih Asy Syafi Imam Masjidil Haram."),
      CustomHotspot(
          yaw: -102.8,
          pitch: -7.8,
          title: "Senjata Tajam",
          description: "Senjata tajam tradisional."),
      CustomHotspot(
          yaw: -125.2,
          pitch: 3.7,
          title: "Mimbar Masjid Jamik",
          description:
              "Mimbar masjid jamik sumbawa besar yang dibuat pada tahun 1299 H bertepatan dengan tahun 1878 M."),
      CustomHotspot(
          yaw: -163.1,
          pitch: -3.6,
          title: "Miniature Istana Dalam Loka",
          description: "Miniature istana dalam loka."),
    ],
    // Scene 4
    [
      CustomHotspot(
          yaw: 2.8,
          pitch: -10.0,
          title: "Mimbar Masjid Jamik",
          description:
              "Mimbar masjid jamik sumbawa besar yang dibuat pada tahun 1299 H bertepatan dengan tahun 1878 M."),
      CustomHotspot(
          yaw: 73.9,
          pitch: -6.6,
          title: "Duplikat Al-Qur'an Tulis Tangan",
          description:
              "Al-Qur'an tulisan tangan yang dihadiahkan kehadapan Sultan Jalaluddin bin Muhammad Qaimuddin pada tahun\n1307 H(1886 M) Al-Qur'an ini dari Syeh Ahmad Abdul Faqih Asy Syafi Imam Masjidil Haram."),
      CustomHotspot(
          yaw: 42.9,
          pitch: -10.2,
          title: "Senjata Tajam",
          description: "Senjata tajam tradisional."),
      CustomHotspot(
          yaw: -141.7,
          pitch: -10.9,
          title: "Miniatur Istana Dalam Loka",
          description: "Miniatur Istana dalam loka."),
      CustomHotspot(
          yaw: -45.4,
          pitch: -16.9,
          title: "Alat Perikanan",
          description:
              "Peralatan perikanan tradisional\n1.Kodong\nKodong adalah peralatan tradisional untuk menangkap ikan yang biasanya terbuat dari anyaman bambu\natau rotan kodong memiliki bentuk seperti perangkap dengan lubang masuk yang menyempit ke dalam.\n2.Bubu/Kerapas\nBubu atau kerapas adalah alat tangkap ikan tradisional yang dibuat dari anyaman bambu atau rotan\nBubu biasanya berbentuk silinder atau kotak dengan lubang masuk berbentuk corong yang mengarah\nke dalam sehingga ikan yang masuk sulit keluar.\n3.Jala\nJala adalah alat tangkap ikan yang berupa jaring dengan pemberat di bagian ujungnya\nJala digunakan dengan cara ditebarkan ke permukaan air lalu tenggelam\ndan menjebak ikan di dalamnya sebelum ditarik kembali."),
      CustomHotspot(
          yaw: -92.7,
          pitch: -8.7,
          title: "Alat Pertanian",
          description:
              "Alat pertanian tradisional\n1.Baka\nBaka adalah wadah yang terbuat dari anyaman bambu yang digunakan untuk memmbawa padi \ndari lumbung ke tempat penumbukan\n2.Berang\nBerang dalam Bahasa Indonesianya adalah Parang."),
      CustomHotspot(
          yaw: -109.5,
          pitch: -8.2,
          title: "Peralatan Dapur",
          description:
              "Peralatan dapur tradisional\n1.Romong\nRomong terbuat dari bambu dengan cara dianyam dan difungsikan sebagai tempat menyimpan nasi.\n2.Lanya\nLanya terbuat dari bambu yang difungsikan sebagai alas dari romong.\n3.Senuk Belo\nSenuk belo terbuat dari batok kelapa yang fungsinya sebagai pengaduk sayur.\n4.Senuk Pene\nSenuk pene terbuat dari batok kelapa,senuk pene ini berfungsi sebagai alat untuk mengambil nasi.\n5.Kukis\nKukis terbuat dari bambu,bentuk kukis seperti kerucut biasanya digunakan untuk mengkukus.\n6.Ampat\nAmpat terbuat dari lontar,ampat berfungsi sebagai alat untuk mengipas bara api saat memasak."),
    ],
    // Scene 5
    [
      CustomHotspot(
          yaw: 0.3,
          pitch: -10.2,
          title: "Alat Pertanian",
          description:
              "Alat pertanian tradisional\n1.Baka\nBaka adalah wadah yang terbuat dari anyaman bambu yang digunakan untuk memmbawa padi \ndari lumbung ke tempat penumbukan\n2.Berang\nBerang dalam Bahasa Indonesianya adalah Parang."),
      CustomHotspot(
          yaw: -51.6,
          pitch: -8.3,
          title: "Peralatan Dapur",
          description:
              "Peralatan dapur tradisional\n1.Romong\nRomong terbuat dari bambu dengan cara dianyam dan difungsikan sebagai tempat menyimpan nasi.\n2.Lanya\nLanya terbuat dari bambu yang difungsikan sebagai alas dari romong.\n3.Senuk Belo\nSenuk belo terbuat dari batok kelapa yang fungsinya sebagai pengaduk sayur.\n4.Senuk Pene\nSenuk pene terbuat dari batok kelapa,senuk pene ini berfungsi sebagai alat untuk mengambil nasi.\n5.Kukis\nKukis terbuat dari bambu,bentuk kukis seperti kerucut biasanya digunakan untuk mengkukus.\n6.Ampat\nAmpat terbuat dari lontar,ampat berfungsi sebagai alat untuk mengipas bara api saat memasak."),
      CustomHotspot(
          yaw: -140.5,
          pitch: -6.5,
          title: "Miniatur Istana Dalam Loka",
          description: "Miniatur Istana dalam loka."),
      CustomHotspot(
          yaw: 146.2,
          pitch: -13.3,
          title: "Mimbar Masjid Jamik",
          description:
              "Mimbar masjid jamik sumbawa besar dibuat pada tahun 1299 H bertepatan dengan tahun 1878 M."),
      CustomHotspot(
          yaw: 97.2,
          pitch: -19.4,
          title: "Peralatan Perikanan",
          description:
              "Peralatan perikanan tradisional\n1.Kodong\nKodong adalah peralatan tradisional untuk menangkap ikan yang biasanya terbuat dari anyaman bambu\natau rotan kodong memiliki bentuk seperti perangkap dengan lubang masuk yang menyempit ke dalam.\n2.Bubu/Kerapas\nBubu atau kerapas adalah alat tangkap ikan tradisional yang dibuat dari anyaman bambu atau rotan\nBubu biasanya berbentuk silinder atau kotak dengan lubang masuk berbentuk corong yang mengarah\nke dalam sehingga ikan yang masuk sulit keluar.\n3.Jala\nJala adalah alat tangkap ikan yang berupa jaring dengan pemberat di bagian ujungnya\nJala digunakan dengan cara ditebarkan ke permukaan air lalu tenggelam\ndan menjebak ikan di dalamnya sebelum ditarik kembali."),
      CustomHotspot(
          yaw: 62.9,
          pitch: -23.1,
          title: "Patung Kepala Kerbau",
          description: "Patung kepala kerbau saat barapan kebo."),
    ],
  ];

  int _currentSceneIndex = 0;

  void _showHotspotDialog(CustomHotspot hotspot) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(hotspot.title),
          content: Text(hotspot.description),
          actions: [
            TextButton(
              child: const Text("Tutup"),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  void _nextScene() {
    setState(() {
      _currentSceneIndex = (_currentSceneIndex + 1) % _sceneImages.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scene ${_currentSceneIndex + 1}"),
        actions: [
          IconButton(
            icon: const Icon(Icons.navigate_next),
            onPressed: _nextScene,
          ),
        ],
      ),
      body: Stack(
        children: [
          Panorama(
            child: Image.asset(_sceneImages[_currentSceneIndex]),
            hotspots: _sceneHotspots[_currentSceneIndex]
                .map((customHotspot) => Hotspot(
                      longitude: customHotspot.yaw,
                      latitude: customHotspot.pitch,
                      width: 40,
                      height: 40,
                      widget: GestureDetector(
                        onTap: () => _showHotspotDialog(customHotspot),
                        child: const Icon(
                          Icons.location_pin,
                          color: Colors.red,
                          size: 40,
                        ),
                      ),
                    ))
                .toList(),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: _nextScene,
              child: const Icon(Icons.navigate_next),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomHotspot {
  final double yaw;
  final double pitch;
  final String title;
  final String description;

  CustomHotspot({
    required this.yaw,
    required this.pitch,
    required this.title,
    required this.description,
  });
}
