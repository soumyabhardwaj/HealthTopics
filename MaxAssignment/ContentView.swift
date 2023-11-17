import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = TopicViewModel()

    var body: some View {
        NavigationView {
            TopicsListView(viewModel: viewModel)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

