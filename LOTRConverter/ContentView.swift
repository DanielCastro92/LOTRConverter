//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Daniel Castro on 12/04/25.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    
    var body: some View {
        ZStack{
            // Background Image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                // Prancing Pony Image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                // Currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                // Conversion Section
                HStack{
                    // Left conversion
                    VStack{
                        // Currency
                        HStack{
                            // Currency image
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 33)
                            
                            // Currecy text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                        }
                        
                        // Text Field
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.center)
                            .clipShape(.capsule)
                            .frame(maxWidth: 150)
                           
                    }
                    
                    
                    // Equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)

                    // Right conversion
                    VStack{
                        // Currency
                        HStack{
                            // Currency text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            // Currecy image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 33)
                        }
                        // Text Field
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.center)
                            .clipShape(.capsule)
                            .padding(.top, -5)
                            .frame(maxWidth: 150)
                    }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius:20).fill(Color.black.opacity(0.5)))
                
                Spacer()
                
                // Info Button
                HStack {
                    Spacer()
                    Button{
                        showExchangeInfo.toggle()
//                        print("showExchangeInfo value: \(showExchangeInfo)")
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
