//
//  StatusView.swift
//  Story
//
//  Created by Ganesh Raju Galla on 22/01/23.
//

import SwiftUI
import StoryUI

struct StatusView: View {
    @State private var isPresented:Bool = false
    @State private var stories = [
        StoryUIModel(user: StoryUIUser(name: "Tolga İskender", image: "https://image.tmdb.org/t/p/original/pB8BM7pdSp6B6Ih7QZ4DrQ3PmJK.jpg"), stories: [
            Story(mediaURL: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4", date: "30 min ago", type: .video),
            Story(mediaURL: "https://image.tmdb.org/t/p/original//pThyQovXQrw2m0s9x82twj48Jq4.jpg", date: "1 hour ago", type: .image),
            Story(mediaURL: "https://image.tmdb.org/t/p/original/pB8BM7pdSp6B6Ih7QZ4DrQ3PmJK.jpg", date: "12 hour ago", type: .image)
        ]),
        StoryUIModel(user: StoryUIUser(name: "Jhon Doe", image: "https://image.tmdb.org/t/p/original//pThyQovXQrw2m0s9x82twj48Jq4.jpg"), stories: [
            Story(mediaURL: "https://picsum.photos/id/237/200/300", date: "12 hour ago", type: .image),
            Story(mediaURL: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4", date: "30 min ago", type: .video)
        ]),
    ]
    var body: some View {
        NavigationView{
            Button {
                isPresented = true
            } label: {
                Text("Show")
            }
            .fullScreenCover(isPresented: $isPresented) {
               StoryView(stories: stories, isPresented: $isPresented)
            }
        }
        .background(.black)
    }
}

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
    }
}
