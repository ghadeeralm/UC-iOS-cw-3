//
//  ContentView.swift
//  cw3 part1
//
//  Created by ghadeer almajed on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var grade = ""
    @State var tap = ""
    
    
    var body: some View {
        //Text("Hello, world!")
            //.padding()
        ZStack{
            Color.teal
                .ignoresSafeArea()
            VStack{
                Text("حاسب الدرجات")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    
                Image("calc")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 200)
                TextField("Enter Your Grade", text:  $grade)
                    .foregroundColor(.white)
                Text("احسب درجتي")
                   // .padding()
                    .foregroundColor(.white)
                    .font(.system(size: 16))
                    .frame(width: 90, height: 40)
                    .background(Color.yellow)
                    .clipShape(Capsule())
            
                    .onTapGesture {
                        if Double(grade) ?? 0 >= 90
                        {
                            tap = "امتياز"
                        }
                            else if Double(grade) ?? 0 >= 80 && Double(grade) ?? 0 < 90
                            {
                                tap = "جيد جدا"
                            }
                            else if Double(grade) ?? 0 >= 70 && Double(grade) ?? 0 < 80
                                {
                                tap = "جيد"
                                }
                        else if Double(grade) ?? 0 >= 60 && Double(grade) ?? 0 < 70
                                {
                                    tap = "مقبول"
                                }
                                else{
                                    tap = "راسب"
                                }
                            
                    }
                        
                Text("لقد حصلت على درجة:")
              
                Text(tap)
                    }
            
                
                
                
                
            }
            
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
