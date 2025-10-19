import SwiftUI

@main
struct aboutthismacApp: App {
    var body: some Scene {

        WindowGroup {

            AboutThisMacView()
        }

        .windowStyle(.hiddenTitleBar)
        .windowToolbarStyle(.unifiedCompact)
        

        .commands {
            CommandGroup(replacing: .newItem) { }
        }
    }
}
