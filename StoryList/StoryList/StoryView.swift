//
//  StoryView.swift
//  StoryList
//
//  Created by Samar Assi on 15/03/2024.
//

import SwiftUI

struct StoryView: View {
    var name: Text
    var image: Image
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            storyView
            accountOwnerView
        }
        .frame(width: 180, height: 250)
    }
}

extension StoryView {
    var storyView: some View {
        image
            .resizable()
            .frame(width: 180, height: 250)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
    }
    
    var accountOwnerView: some View {
        VStack(alignment: .leading) {
            Circle()
                .frame(width: 50)
                .foregroundStyle(Color.white)
                .overlay {
                    Circle()
                        .stroke(lineWidth: 5)
                        .foregroundStyle(Color("dark_blue"))
                }
            
            Spacer()
            name
                .font(.title2)
                .fontWeight(.bold)
                .lineLimit(1)
                .truncationMode(.tail)
                .foregroundStyle(Color.white)
            
        }
        .padding(12)
    }
}

#Preview {
    StoryView(name: Text("Panda"), image: Image("panda"))
}
