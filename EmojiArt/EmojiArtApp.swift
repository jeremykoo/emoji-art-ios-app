//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Jeremy Koo on 10/9/23.
//

import SwiftUI

@main
struct Emoji_ArtApp: App {
    @StateObject var paletteStore = PaletteStore(named: "Main")

    var body: some Scene {
        DocumentGroup(newDocument: { EmojiArtDocument() }) { config in
            EmojiArtDocumentView(document: config.document)
                .environmentObject(paletteStore)
        }
    }
}
