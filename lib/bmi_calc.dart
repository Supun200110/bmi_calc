import 'package:bmi_cal/constants.dart';
import 'package:flutter/material.dart';

class BMICalculatorPage extends StatefulWidget {
  const BMICalculatorPage({super.key});

  @override
  State<BMICalculatorPage> createState() => _BMICalculatorPageState();
}

class _BMICalculatorPageState extends State<BMICalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        foregroundColor: kActiveTextColor,
        title: Center(child: const Text('BMI Calculator')),
      ),
      backgroundColor: kBackgroundColor,
      body: Container(
       
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex:10,
                        child: Container(
                          decoration: kTileBorderDecoration,  
                          padding:EdgeInsets.all(20),
                          child: const Column(
                            children: [Icon(Icons.male, size:50 ,color: kActiveTextColor,),Text("Male", 
                            style: TextStyle(fontSize: 24,color:kActiveTextColor, ),
                            )
                            ],
                          ),
                        ),
                      ),
                    
                    const SizedBox(width: 5,),
                    Expanded(
                      flex: 10,
                      child: Container(
                        decoration: kTileBorderDecoration, 
                        padding:const EdgeInsets.all(20),
                        child: const Column(
                            children: [Icon(Icons.female, size: 50,color: kActiveTextColor,),Text("Female",
                            style: TextStyle(fontSize: 24,color: kActiveTextColor),)],
                          ),
                      ),
                    ),
                      
                    ],
                  ),
                  SizedBox(height: 25,),
                  Container(
                    decoration: kTileBorderDecoration, 
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                       const Text("Height", style: TextStyle(color:kActiveTextColor), ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text( "183", 
                            style: TextStyle(
                              color: kActiveTextColor,
                              fontSize:50, 
                              fontWeight:FontWeight.bold, )),
                            Text("cm" ,style:TextStyle(color: kActiveTextColor)),
                          ],
                        ),
                        
                        Slider(
                          min:80, 
                          max:200, 
                          value:183, 
                          onChanged: (value){},
                          thumbColor: kButtonColor,
                          activeColor: Colors.white,
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: kTileBorderDecoration, 
                          padding:const EdgeInsets.all(20) ,
                          child: Column(children: [
                            Text("weight", style: TextStyle(color: kActiveTextColor,),),
                            Text("74", style: TextStyle(fontSize:50, fontWeight:FontWeight.bold,color: kActiveTextColor,),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor: kScaleButtonColor,
                                  shape: ShapeBorder.lerp(
                                    CircleBorder(), CircleBorder(), 0.5,
                                    ),
                                  onPressed: (){},
                                  child: Icon(Icons.remove,color: kActiveTextColor,),
                                  ),
                                   SizedBox(width: 10,),
                                   FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor: kScaleButtonColor,
                                  shape: ShapeBorder.lerp(
                                    CircleBorder(), CircleBorder(), 0.5,
                                    ),
                                  onPressed: (){},
                                  child: Icon(Icons.add,color: kActiveTextColor,),
                                  )
                              ],
                            ),
                          
                          ],),
                        ),
                      ),
                      SizedBox(width:5,),
                       Expanded(
                         child: Container(
                          decoration: kTileBorderDecoration, 
                          padding: EdgeInsets.all(20),
                           child: Column(children: [
                            Text("Height", style: TextStyle(color: kActiveTextColor)),
                            Text("74", style: TextStyle(fontSize:50, fontWeight:FontWeight.bold, color: kActiveTextColor),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor: kScaleButtonColor,
                                  shape: ShapeBorder.lerp(
                                    CircleBorder(), CircleBorder(), 0.5,
                                    ),
                                  onPressed: (){},
                                  child: Icon(Icons.remove,color: kActiveTextColor,),
                                  ),
                                  SizedBox(width: 10,),
                                   FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor: kScaleButtonColor,
                                  shape: ShapeBorder.lerp(
                                    CircleBorder(), CircleBorder(), 0.5,
                                    ),
                                  onPressed: (){},
                                  child: Icon(Icons.add, color: kActiveTextColor,),
                                  )
                              ],
                            ),
                                               
                              ],),
                         ),
                       ),
                    ],
                  )
                ],
                ),
            ),
              SizedBox(height: 25,),
              Spacer(),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: kButtonColor,
                      shape: RoundedRectangleBorder(),
                      minimumSize: const Size(double.infinity,80 ),
                    ),
                    onPressed: (){}, child: Text("Calculated BMI", style: TextStyle(fontSize: 20,color: kActiveTextColor),)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
