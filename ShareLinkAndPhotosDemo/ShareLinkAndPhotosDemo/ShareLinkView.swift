//
//  ShareLinkView.swift
//  ShareLinkAndPhotosDemo
//
//  Created by Jero on 2022/11/16.
//

import SwiftUI


struct SharingPhoto: Transferable {
    static var transferRepresentation: some TransferRepresentation {
        ProxyRepresentation(exporting: \.image)
    }
    
    public var image: Image
    public var caption: String
}

struct ShareLinkView: View {
    private let url = URL(string: "https://www.naver.com")!
    
    private let photo = SharingPhoto(
        image: Image(systemName: "snowflake.circle"),
        caption: "This is a snowflake!")
    
    var body: some View {
        VStack {
            ShareLink(item: url) {
                Image(systemName: "square.and.arrow.up")
                    .font(.largeTitle)
            }
//            .presentationDetents([.medium, .large])
            Divider()
            
            photo.image
                .font(.largeTitle)
            
            ShareLink(
                item: photo,
                subject: Text("snowflake"),
                message: Text("Check it out!"),
                preview: SharePreview(photo.caption, image: photo.image))
            .font(.largeTitle)
        }
        .padding()
    }
}

struct ShareLinkView_Previews: PreviewProvider {
    static var previews: some View {
        ShareLinkView()
    }
}
