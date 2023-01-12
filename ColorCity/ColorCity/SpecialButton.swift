//
//  SpecialButton.swift
//  trying
//
//  Created by Alanoud Saleh on 18/06/1444 AH.
//

import SwiftUI

struct SpecialButton: View {
    
    var buttonText = "My button"
    var buttonColo : Color = (Color.blue)
    var buttonColor = Color(#colorLiteral(red: 0.333, green: 0.329, blue: 0.224, alpha: 1)) // #555439
    var text : String = ""

    
    var body: some View {
        ZStack{
            ZStack{
                
                RoundedRectangle(cornerRadius: 20)
               // LeftCorner()
                 //   .trim(from: 0, to: 0.5)
                    .fill(buttonColo)
                    .frame( width: 123, height: 110).padding(.top,-55)
                 //   .padding(.top,50)
            }
            RoundedRectangle(cornerRadius: 20)
           // LeftCorner()
             //   .trim(from: 0, to: 0.5)
                 .fill(buttonColor)
                .frame( width: 120, height: 35)
                .padding(.top,30)
            RoundedRectangle(cornerRadius: 0)
           // LeftCorner()
             //   .trim(from: 0, to: 0.5)
               .fill(buttonColor)
                .frame( width: 120, height: 20)
                .padding(.top,-5)
            
            Text("\(text)")
                .padding(.bottom,-500)
        }
    }
    
    
    struct LeftCorner: Shape {
        
        func path(in rect: CGRect) ->  Path {var path = Path()
            path.addRoundedRect(in: rect,cornerSize: CGSize(width: 9 , height: 8 ))
            return path}
        
    }
    
    struct SpecialButton_Previews: PreviewProvider {
        static var previews: some View {
            SpecialButton()
        }
    }
}
