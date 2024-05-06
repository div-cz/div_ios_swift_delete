import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    let image: String?
    let title: String
    var frameWidth: CGFloat

    // MARK: - BODY
    var body: some View {
        Button {
            // Text(title)
        } label: {
            if let image = image {
                AsyncImage(url: URL(string: image)) { image in
                    image
                        .resizable()
                        .frame(width: frameWidth, height: 200)
                        .cornerRadius(5)
                } placeholder: {
                    // Shows when image is available, but is loading
                        VStack {
                            Image(.divSquare)
                                .resizable()
                                .frame(width: 48, height: 40)
                                .padding(.bottom)
                            ProgressView()
                        }
                        .padding()
                        .frame(width: frameWidth, height: 200)
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .foregroundColor(.gray.opacity(0.2))
                        )
                }
            } else {
                // Shows when image is missing
                VStack(spacing: 20) {
                    Text(title)
                        .lineLimit(4)
//                        .padding()
//                        .lineLimit(4)
//                        .frame(width: frameWidth)
//                        .foregroundColor(.black)
                    Image(.divSquare)
                        .resizable()
                        .frame(width: 48, height: 40)
                }
                .foregroundColor(.black)
                .padding()
                .frame(width: frameWidth, height: 200)
                .background(
                    RoundedRectangle(cornerRadius: 5)
                        .foregroundColor(.gray.opacity(0.2))
                )
//                .background(
//                    RoundedRectangle(cornerRadius: 5)
//                        .frame(width: frameWidth, height: 200)
//                        .cornerRadius(5)
//                        .foregroundColor(.gray.opacity(0.2))
//                )
            }
        }
    }
}

// MARK: - PREVIEW
#Preview {
    VStack(spacing: 20) {
        HStack(spacing: 20) {
            CardView(image: Movies.mock.movies.first!.imgPosterURL ?? "https://image.tmdb.org/t/p/w300_and_h450_bestv2//gh4cZbhZxyTbgxQPxD0dOudNPTn.jpg", title: "Spiderman", frameWidth: 150)
            CardView(image: "noimg.png", title: "", frameWidth: 150)
        }
        CardView(image: nil, title: "Letopisy Narnie: Lev, čarodějnice a skříň Letopisy Narnie: Lev, čarodějnice a skříň Letopisy Narnie: Lev, čarodějnice a skříň", frameWidth: 150)
    }
}
