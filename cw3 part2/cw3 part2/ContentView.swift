//
//  ContentView.swift
//  cw3 part2
//
//  Created by ghadeer almajed on 10/09/2022.
//

import SwiftUI

struct ContentView: View
{
    @State var tap1 = 0
    @State var tap2 = 0
    @State var tap3 = 0
    var body: some View {
       // Text("Hello, world!")
            //.padding()
        VStack{
            
            
            ExtractedView( taps: $tap1, text: "استغفرالله العظيم")
            ExtractedView( taps: $tap2, text: "سبحان الله العظيم")
            ExtractedView( taps: $tap3, text: "سبحان الله وبحمده")
            
            
            
            
            
            
            
            
            
            
            
        }
        
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    @Binding var taps : Int
    var text: String
    var body: some View {
        HStack{
            Text(text)
         
            ZStack{
                Circle()
                
                
                    .foregroundColor(.green)
                    .frame(width: 93, height: 73)
                Text("\(taps)")
                
            }
            .onTapGesture {
                taps  += 1
            }
            
        }
    }
}
