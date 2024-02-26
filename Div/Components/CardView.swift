import SwiftUI

struct CardView: View {
// MARK: - PROPERTIES
    let image: URL

    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(url: image, content: { returnedImage in
                returnedImage
                    .resizable()
                    .frame(width: 196, height: 125)
                    .cornerRadius(2)
            }, placeholder: {
                ProgressView()
            })
            .padding(.top, 2)

            Group {
                Text("Rychle a zběsile") // hypertext
                Text("Popis filmu, děje, atd. Popis filmu děje atd....")
                    .lineLimit(2)
            }
            .padding(.horizontal)

            NavigationLink {
                Text("Detail filmu")
            } label: {
                Text("Název filmu")
                    .padding()
                    .foregroundColor(.white)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                    )
            }

            Spacer()
        }
        .clipShape(
            RoundedRectangle(cornerRadius: 0)
        )
        .frame(width: 200, height: 250)
        .border(.red)
        .cornerRadius(10)

    }
}

// MARK: - PREVIEW
#Preview {
    CardView(image: URL(string: "https://picsum.photos/200/300")!)
}
