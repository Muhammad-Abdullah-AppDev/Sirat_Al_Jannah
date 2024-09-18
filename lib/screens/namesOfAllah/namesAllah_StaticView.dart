import 'package:flutter/material.dart';
import 'package:sirat_al_jannah/constants/app_colors.dart';

class AllahNamesStaticView extends StatefulWidget {
  const AllahNamesStaticView({super.key});

  @override
  State<AllahNamesStaticView> createState() => _AllahNamesStaticViewState();
}

class _AllahNamesStaticViewState extends State<AllahNamesStaticView> {
  int selectedContainerIndex = -1;

  List<String> firstPortionData = [
    "الرَّحْمَنُ",
    "الرَّحِيمُ",
    "الْمَلِكُ",
    "الْقُدُّوسُ",
    "السَّلاَمُ",
    "الْمُؤْمِنُ",
    "الْمُهَيْمِنُ",
    "الْعَزِيزُ",
    "الْجَبَّارُ",
    "الْمُتَكَبِّرُ",
    "الْخَالِقُ",
    "الْبَارِئُ",
    "الْمُصَوِّرُ",
    "الْغَفَّارُ",
    "الْقَهَّارُ",
    "الْوَهَّابُ",
    "الرَّزَّاقُ",
    "الْفَتَّاحُ",
    "الْعَلِيمُ",
    "الْقَابِضُ",
    "الْبَاسِطُ",
    "الْخَافِضُ",
    "الرَّافِعُ",
    "الْمُعِزُّ",
    "الْمُذِلُّ",
    "السَّمِيعُ",
    "الْبَصِيرُ",
    "الْحَكَمُ",
    "الْعَدْلُ",
    "اللَّطِيفُ",
    "الْخَبِيرُ",
    "الْحَلِيمُ",
    "الْعَظِيمُ",
    "الْغَفُورُ",
    "الشَّكُورُ",
    "الْعَلِيُّ",
    "الْكَبِيرُ",
    "الْحَفِيظُ",
    "الْمُقِيتُ",
    "الْحَسِيبُ",
    "الْجَلِيلُ",
    "الْكَرِيمُ",
    "الرَّقِيبُ",
    "الْمُجِيبُ",
    "الْوَاسِعُ",
    "الْحَكِيمُ",
    "الْوَدُودُ",
    "الْمَجِيدُ",
    "الْبَاعِثُ",
    "الشَّهِيدُ",
    "الْحَقُّ",
    "الْوَكِيلُ",
    "الْقَوِيُّ",
    "الْمَتِينُ",
    "الْوَلِيُّ",
    "الْحَمِيدُ",
    "الْمُحْصِي",
    "الْمُبْصِرُ",
    "الْحَسِيبُ",
    "الْعَلِيمُ",
    "الْقَابِضُ",
    "الْبَاسِطُ",
    "الْخَافِضُ",
    "الْرَّافِعُ",
    "الْمُعِزُّ",
    "الْمُذِلُّ",
    "السَّمِيعُ",
    "الْبَصِيرُ",
    "الْحَكَمُ",
    "الْعَدْلُ",
    "اللَّطِيفُ",
    "الْخَبِيرُ",
    "الْحَلِيمُ",
    "الْعَظِيمُ",
    "الْغَفُورُ",
    "الشَّكُورُ",
    "الْعَلِيُّ",
    "الْكَبِيرُ",
    "الْحَفِيظُ",
    "الْمُقِيتُ",
    "الْحَسِيبُ",
    "الْجَلِيلُ",
    "الْكَرِيمُ",
    "الرَّقِيبُ",
    "الْمُجِيبُ",
    "الْوَاسِعُ",
    "الْحَكِيمُ",
    "الْوَدُودُ",
    "الْمَجِيدُ",
    "الْبَاعِثُ",
    "الشَّهِيدُ",
    "الْحَقُّ",
    "الْوَكِيلُ",
    "الْقَوِيُّ",
    "الْمَتِينُ",
    "الْوَلِيُّ",
    "الْحَمِيدُ",
    "الْمُحْصِي",
    "الْمُبْصِرُ",
    "الْحَسِيبُ",
    "الْعَلِيمُ",
    "الْقَابِضُ",
    "الْبَاسِطُ",
    "الْخَافِضُ",
    "الْرَّافِعُ",
    "الْمُعِزُّ",
    "الْمُذِلُّ",
    "السَّمِيعُ",
    "الْبَصِيرُ",
  ];

  List<List<String>> secondPortionData = [
    ["1", "الرَّحْمَنُ", "AR-RAHMAAN", "The Beneficent"],
    ["2", "الرَّحِيمُ", "AR-RAHEEM", "The Merciful"],
    ["3", "الْمَلِكُ", "Al-Malik", "The King"],
    // Add more sets of data for the second portion as needed.
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Names of ALLAH ALMIGHTY"),
        backgroundColor: AppColors.backgroundColor,
        foregroundColor: AppColors.appBarColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.5,
                color: AppColors.lightGreen, // Customize the container color as needed.
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      selectedContainerIndex >= 0
                          ? secondPortionData[selectedContainerIndex][0]
                          : '',
                      style: TextStyle(
                          fontSize: 18,
                          ),
                    ),
                    SizedBox(height: 30,),// Number
                    Text(
                      selectedContainerIndex >= 0
                          ? secondPortionData[selectedContainerIndex][1]
                          : '',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                    ), // Arabic Text
                    SizedBox(height: 20,),
                    Text(
                      selectedContainerIndex >= 0
                          ? secondPortionData[selectedContainerIndex][2]
                          : '',
                      style: TextStyle(
                          fontSize: 24,
                          ),
                    ), // Transliteration
                    SizedBox(height: 15,),
                    Text(
                      selectedContainerIndex >= 0 ? secondPortionData[selectedContainerIndex][3]
                          : '',
                      style: TextStyle(
                          fontSize: 24,
                          ),
                    ), // English Meaning
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              flex: 1,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: firstPortionData.length,
                reverse: true, // Start from the right end and scroll towards the left.
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedContainerIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Container(
                            width: 150,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: selectedContainerIndex == index
                                  ? AppColors.backgroundColor
                                  : AppColors.semiBlack,
                              borderRadius: BorderRadius.circular(5.0),
                            ),

                            child: Center(
                                  child: Text(
                                  firstPortionData[index],
                                  style: TextStyle(
                                    color: AppColors.golden,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}