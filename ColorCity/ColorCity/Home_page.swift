//
//  Home_page.swift
//  color_city
//
//  Created by Ameerah on 16/06/1444 AH.
//

import SwiftUI

struct Home_page: View {
    @State var isPre = false
    var body: some View {
        NavigationView{
            ScrollView{
                VStack (spacing: 100){
                    
                    
                    
                    VStack (spacing: 100){
                        HStack{
                            
                            NavigationLink(destination: Trind_page()) {   SpecialButton2(image: "Clothes",text: "Clothes") }
                            
                            
                            Spacer()
                                .frame(width: 30)
                            // .padding(.bottom,380)
                           // NavigationLink(destination: Trind_page()) {
                            SpecialButton2(image: "Car", text: "Car") 
                           
                        }
                        HStack{
                            SpecialButton2(image: "Hair dyes", text: "Hair dyes")
                            Spacer()
                                .frame(width: 30)
                            // .padding(.bottom,380)
                            SpecialButton2(image: "wall color", text: "wall color")
                        }
                        HStack{
                            SpecialButton2(image: "Furniture",text: "Furniture")
                            Spacer()
                                .frame(width: 30)
                            // .padding(.bottom,380)
                            SpecialButton2(image: "snekers",text: "snekers")
                        }
                        HStack{
                            SpecialButton2(image: "abay’s",text:  "abay’s")
                            Spacer()
                                .frame(width: 30)
                            // .padding(.bottom,380)
                            SpecialButton2(image: "bags", text:  "bags")
                        }
                        
                    }
                }
            }
            
        }
       

         //   VStack{
                
                //SpecialButton2(image: "")
               // SpecialButton2(image: "")
            }
}

struct Home_page_Previews: PreviewProvider {
    static var previews: some View {
        Home_page()
    }
}
