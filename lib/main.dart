import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal), // Change to teal
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, dynamic>> Listlaptop = [
    {
      'gambar': '79Y1.png',
      'merk': 'Nitro V 15 ANV15-51-79Y1 Gaming Notebook',
      'seri' : 'ANV15-51-79Y1 | NH.QNASN.002',
      'harga_asli': 'RP 14.549.000',
      'harga_diskon': 'RP 14.049.000',
      'view': '12,7 rb'
    },
    {
      'gambar': '542G.jpg',
      'merk': 'Nitro V 15 ANV15-51-542G Gaming Notebook',
      'seri' : 'ANV15-51-542G | NH.QNASN.001',
      'harga_asli': 'RP 11.749.000',
      'harga_diskon': 'RP 11.249.000',
      'view': '10,2 rb'
    },
    {
      'gambar': '901S.png',
      'merk': 'Nitro V 15 ANV15-51-901S Gaming Notebook',
      'seri' : 'ANV15-51-901S | NH.QQESN.001',
      'harga_asli' : 'Rp 22.499.000',
      'harga_diskon' : 'Rp 19.999.000',
      'view': '13,6 rb'
    },
    {
      'gambar': '5115jpg.jpg',
      'merk': 'Nitro V 15 ANV15-51-5115 Gaming Notebook',
      'seri' : 'ANV15-51-5115 | NH.QN8SN.001',
      'harga_asli': 'RP 15.749.000',
      'harga_diskon': 'RP 15.249.000',
      'view': '11,1 rb'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal, 
        centerTitle: true,
        title: Text(
          'Petualangan Rasa',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white), 
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.42,
          ),
          itemCount: Listlaptop.length,
          itemBuilder: (context, index) {
            final menu = Listlaptop[index];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white, 
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: ClipRRect(
                          child: Image.asset(
                            menu['gambar'],
                            height: 150,
                            width: 300,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 120,
                              child: Column(
                                children: [
                                  Text(
                                    menu['merk'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black, 
                                    ),
                                  ),
                                  Text(
                                    menu['seri'],
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black
                                    ),)
                                ],
                              ),
                            ),
                            SizedBox(height: 7),
                            Divider(),
                            SizedBox(height: 7),
                            Text(
                              menu['harga_asli'],
                              style: TextStyle(
                                fontSize: 12,
                                decoration: TextDecoration.lineThrough
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 7),
                              child: Text(
                                menu['harga_diskon'], 
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.shopping_cart, color: Colors.grey, size: 18,),
                                    Text(menu['view'], style: TextStyle(color: Colors.black)), // Change view text color
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 7,),
                            Divider(),
                            SizedBox(height: 7,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Container(
                                    // width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                    ),
                                    child: TextButton(
                                      onPressed: (){}, 
                                      child: Text(
                                        'Beli Sekarang',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      )),
                                  ),
                                ),
                                Container(
                                  width: 36,
                                  height: 36,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 1,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.bookmark_border, color: Colors.teal, size: 18,), // Change bookmark icon color to teal
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
