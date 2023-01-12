//
//  SpecialButton2.swift
//  trying
//
//  Created by Alanoud Saleh on 18/06/1444 AH.
//

import SwiftUI

struct SpecialButton2: View {
    var buttonText = "My button"
    var buttonColor = Color(#colorLiteral(red: 0.333, green: 0.329, blue: 0.224, alpha: 1)) // #555439
    var image : String = ""
    var text : String = ""
    
    var body: some View {
        ZStack{
            ZStack{
                
                Image("\(image)")
                    .resizable()
                    .cornerRadius(30)
                    .frame(width:123 , height:110).padding(.top,-55)
            }
            RoundedRectangle(cornerRadius: 20)
           // LeftCorner()
             //   .trim(from: 0, to: 0.5)
                 .fill(buttonColor)
                .frame( width: 120, height: 35)
                .padding(.top,50)
            RoundedRectangle(cornerRadius: 0)
           // LeftCorner()
             //   .trim(from: 0, to: 0.5)
               .fill(buttonColor)
                .frame( width: 120, height: 20)
                .padding(.bottom,-500)
            Text("\(text)")
                .padding(.bottom,-500)
        }
    }
    
    
    
    struct LeftCorner: Shape {
        
        func path(in rect: CGRect) ->  Path {var path = Path()
            path.addRoundedRect(in: rect,cornerSize: CGSize(width: 9 , height: 8 ))
            return path}
        
    }
}



struct SpecialButton2_Previews: PreviewProvider {
    static var previews: some View {
        SpecialButton2()
    }
}
