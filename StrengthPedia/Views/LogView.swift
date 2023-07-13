//
//  LogView.swift
//  StrengthPedia
//
//  Created by Hossein Sharifi on 28/06/2023.
//

import SwiftUI

import SwiftUI

struct LogView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(0 ..< 5) { item in
                    Button(action: {
                        // Place the action you want the button to perform here.
                        print("SessionCard pressed.")
                    }) {
                        SessionCard()
                            .frame(maxWidth: .infinity)
                            .padding(20)
                            .background(Color.white)
                            .cornerRadius(20)
                    }
                    .buttonStyle(PlainButtonStyle())  // Ensures that the button doesn't modify the look of the SessionCard
                    .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 20)) // Apply additional padding around the rectangle
                }
            }
            .background(Color("customgray"))
            .navigationTitle("Log")
            .toolbar {
                // Places the button on the trailing side of the Navigation Bar.
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Place the action you want the button to perform here.
                        print("Plus button pressed.")
                    }) {
                        Image(systemName: "plus") // System image for "+".
                    }
                }
                // Places the button on the leading side of the Navigation Bar.
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Edit") {
                        print("Edit button pressed.")
                    }
                }
            }
        }
    }
}



struct LogView_Previews: PreviewProvider {
    static var previews: some View {
        LogView()
    }
}

struct GrayRectangle: View {
    var body: some View {
        Rectangle()
            .foregroundColor(Color("customgray"))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .frame(width: 50, height: 50)

    }
}

struct SessionCard: View {
    var body: some View {
        HStack(alignment: .top) {
            ZStack {
                GrayRectangle()
                VStack {
                    Text("Mon")
                        .foregroundColor(.gray)
                        .bold()
                        .font(.system(size: 15))
                    
                    Text("15")
                        .font(.system(size: 25))
                        .bold()
                }
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Pull")
                    .font(.title)
                    .fontWeight(.semibold)
                    .lineLimit(1) // Limit the title to a single line
                Text("5x Barbell row")
                    .lineLimit(nil) // Allow the other lines to wrap to multiple lines
                Text("3x Machine pullover")
                    .lineLimit(nil)
                Text("4x cable curls ")
                    .lineLimit(nil)
                Text("4x cable curls ")
                    .lineLimit(nil)
                
            }
            Spacer()
        }
    }
}

