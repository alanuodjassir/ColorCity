//
//  SwiftUIView.swift
//  trying
//
//  Created by Alanoud Saleh on 06/06/1444 AH.
//

import SwiftUI
 
struct SwiftUIView: View {
@State private var color: Color = .white
@State private var showingSheet = false

    var body: some View {
     
        
        ZStack() {
       
  
             
           
            
            
Button("      Discover Colors Around You!") {
                showingSheet.toggle()
            }.foregroundColor(.black)  .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title)
                .padding(.bottom,500)
                .sheet(isPresented: $showingSheet) {
                    ARViewContainer()
                    ColorPickingButton(color: $color)
              
                  
                 Divider()
        Text(" Hex: #AC8E68")
                .textSelection(.enabled)
                .foregroundColor(color)
              
      
              
                 
                    
                    
                    
                    
                }
        }
        
          
        }
    
    
    }




struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()




    }
}




struct ColorPickingButton: View {


@Binding var color: Color
 
    var body: some View  {
        
               ZStack{
                 

               
                   
              
          
             
                  
//                   .padding(.top, 100.0)
               
               
                   
                   
                   
                   
                   ColorPickerView(color: $color)
              
           .frame(width: 100,height: 50,alignment: .topLeading)
              .clipped()
               .offset(x: 22)
//               .padding(.top,27)
               
               
               
               
               
                   
                   
                   
                   
              }
     
        
        
  
        
        
        
 
        
    }
}

