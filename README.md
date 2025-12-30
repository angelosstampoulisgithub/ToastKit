# ToastKit
I made this simple library to use it in iOS Projects when i want to show a Toast
# ToastKit 

A lightweight SwiftUI toast library for iOS 13+ and macOS 10.15+.

## Features
- Center / Top / Bottom positions
- Auto dismiss
- Custom styles (default, success, error)
- SwiftUI `.toast()` modifier
#
Usage Example
import SwiftUI
import ToastKit

struct ContentView: View {
    @State private var toast: Toast?

    var body: some View {
        VStack(spacing: 20) {
            Button("Show Center Toast") {
                toast = Toast(message: "Hello World!")
            }

            Button("Show Success Toast") {
                toast = Toast(message: "Saved successfully", position: .bottom, style: .success)
            }

            Button("Show Error Toast") {
                toast = Toast(message: "Something went wrong", position: .top, style: .error)
            }
        }
        .toast($toast)
    }
}
#
