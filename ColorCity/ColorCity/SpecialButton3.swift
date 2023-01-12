//
//  SpecialButton3.swift
//  trying
//
//  Created by Alanoud Saleh on 18/06/1444 AH.
//

//

import SwiftUI


struct SpecialButton3: View {

    
    var body: some View {
      
        
            
         
            NavigationView{
                ScrollView{
                    VStack {
                        Image("button3")
                        
                        
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        
                        ZStack(alignment: .center){
                            ExtractedView()
                                .offset(y:-200)
                            
               Divider()
                    
                    
                    
                    VStack {
                        Text("Trend Colors")
                          
                            
                            .font(.largeTitle).bold().padding(.trailing, 190)
              
                        Divider()
                            .frame(width: 60.0, height: 60.0)
                        
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
            }.navigationTitle("Color City ")
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
                
                
            }
            
            
            }
       
            
            
            
            
            
            
            
            
            
            
            
            
                
                
                
                
                //.overlay(ImageOverlay(), alignment: .bottomTrailing)
                
                
                
                
       
                
                
                
                
                
            
            
        
        }
 
    }
struct SpecialButton3_Previews: PreviewProvider {
    static var previews: some View {
        SpecialButton3()
    }
}

struct ExtractedView: View {
    @State private var color: Color = .white
    @State private var showingSheet = false
    var body: some View {
        ZStack() {
            
            
            
            
            
            
            Button("  Discover Colors Around You")
            {
                showingSheet.toggle()
            }.font(.title).bold()
            .foregroundColor(.white)  .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title).bold()
                .padding(.bottom,500)
                .sheet(isPresented: $showingSheet) {
                    ARViewContainer()
                    ColorPickingButton(color: $color)
                    
                    
                    Divider()
                    Text(" Hex: #AC8E68")
                        .textSelection(.enabled)
                        .foregroundColor(color)
                    
                    
                    
                    
                    
                    
                    
                    
                }
        }.padding()
    }
}
