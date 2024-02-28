import SwiftUI

struct CardView: View {
// MARK: - PROPERTIES
    let image: URL = URL(string: "https://picsum.photos/200/300")!

    // MARK: - BODY
    var body: some View {
            NavigationLink {
                Text("Detail filmu")
            } label: {
                AsyncImage(url: image, content: { returnedImage in
                    returnedImage
                        .resizable()
                        .frame(width: 150, height: 200)
                        .cornerRadius(5)
                }, placeholder: {
                    ProgressView()
                        .frame(width: 150, height: 200)
                        .cornerRadius(5)
                        .background(.gray)
                })
                .padding(.top, 2)
            }
    }
}

// MARK: - PREVIEW
#Preview {
    CardView()
}
