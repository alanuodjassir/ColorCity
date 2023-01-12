//
//  Trind_page.swift
//  trying
//
//  Created by Alanoud Saleh on 18/06/1444 AH.
//


import SwiftUI

struct Trind_page: View {
    var body: some View {
   
            NavigationView {
                ScrollView{
                VStack (spacing: 80){
                    Text("2023").font(.system(size: 32))
                        //.padding(.leading,-120)
                    HStack{
                        SpecialButton(buttonColo: Color(#colorLiteral(red: 0.675, green: 0.557, blue: 0.408, alpha: 1)) , text: "#AC8E68" )
                        Spacer()
                            .frame(width: 30)
                        SpecialButton(buttonColo:Color(#colorLiteral(red: 1, green: 0.176, blue: 0.333, alpha: 1)) ,text: "#FF2D55")
                    }
                    HStack{
                        SpecialButton(buttonColo:Color(#colorLiteral(red: 1, green: 0.231, blue: 0.188, alpha: 1)) , text: "#FF3B30")
                        Spacer()
                            .frame(width: 30)
                        SpecialButton(buttonColo :Color(#colorLiteral(red: 0.137, green: 0.137, blue: 0.667, alpha: 1)) ,text: "#2323AA")
                    }
                    Text("2022").font(.system(size: 32))
                        //.padding(.leading,-120)
                    HStack{
                        SpecialButton(buttonColo:Color(#colorLiteral(red: 0.753, green: 0, blue: 0, alpha: 1))  ,text: "#C00000")
                        Spacer()
                            .frame(width: 30)
                        SpecialButton(buttonColo: Color(#colorLiteral(red: 0.188, green: 0.82, blue: 0.345, alpha: 1)) ,text: "#30D158")
                    }
                    HStack{
                        SpecialButton(buttonColo: Color(#colorLiteral(red: 0.71, green: 0.314, blue: 0.314, alpha: 1)) ,text: "#B55050")
                        Spacer()
                            .frame(width: 30)
                        SpecialButton(buttonColo: Color(#colorLiteral(red: 0.298, green: 0.741, blue: 0.714, alpha: 1)) ,text: "#4CBDB6")
                    }
                    HStack{
                        SpecialButton(buttonColo :Color(#colorLiteral(red: 0.129, green: 0.098, blue: 1, alpha: 1)) ,text: "#2119FF" )
                        Spacer()
                            .frame(width: 30)
                        SpecialButton(buttonColo: Color(#colorLiteral(red: 0.518, green: 0.412, blue: 0.412, alpha: 1)) ,text: "#846969")
                    }
                    Text("2021").font(.system(size: 32))
                        //.padding(.leading,-120)
                    HStack{
                        SpecialButton(buttonColo: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)) ,text: "000000")
                        Spacer()
                            .frame(width: 30)
                        SpecialButton(buttonColo: Color(#colorLiteral(red: 0.369, green: 0.361, blue: 0.902, alpha: 1)) , text: "#5E5CE6")
                    }
                    
                }
          
                .navigationTitle("Clothes" )
                .navigationBarBackButtonHidden(false)
                .navigationBarHidden(
                false)
                
                    
                }}
            
        }
    
    
    struct Trind_page_Previews: PreviewProvider {
        static var previews: some View {
            Trind_page()
        }
    }
}
