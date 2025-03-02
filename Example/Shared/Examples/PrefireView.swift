import Prefire
import SwiftUI

struct PrefireView: View {
    var body: some View {
        VStack {
            HStack(spacing: 24) {
                Text("🔥")
                    .font(.system(size: 60))
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .padding(.horizontal, -4)
                            .foregroundColor(.red.opacity(0.6))
                    )
                Text("Prefire")
                    .foregroundColor(.white)
                    .font(.system(size: 56).weight(.heavy))
            }
            .padding(.vertical)
            .frame(maxWidth: .infinity)
            .background(.black.opacity(0.7))
            .background(.purple)
        }
        .cornerRadius(16)
    }
}

struct PrefireView_Preview: PreviewProvider, PrefireProvider {
    static var previews: some View {
        PrefireView()
            .previewLayout(.sizeThatFits)
            .previewUserStory(.auth)
            .previewDisplayName("PrefireView")
    }
}

#Preview("PrefireViewMacro", traits: .sizeThatFitsLayout) {
    PrefireView()
        .previewUserStory(.auth)
        .snapshot(perceptualPrecision: 0.98)
}

#Preview("PrefireViewMacroAnother") {
    @Previewable @State var title: String = "Prefire"

    PrefireView()
        .navigationTitle(title)
        .previewUserStory(.auth)
        .snapshot(perceptualPrecision: 0.98)
}

#Preview("PrefireViewDisabled", traits: .sizeThatFitsLayout) {
    PrefireView()
        .previewUserStory(.auth)
        .prefireIgnored()
}
