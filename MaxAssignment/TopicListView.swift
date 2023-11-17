//
//  TopicListView.swift
//  MaxAssignment
//
//  Created by soumya bhardwaj on 17/11/23.
//

import SwiftUI

struct TopicsListView: View {
    @ObservedObject var viewModel: TopicViewModel

    var body: some View {
        VStack(spacing: 8) {
            Text("Health Topics")
                .font(.title)
                .foregroundColor(.primary)
                .padding(.top) // Add top padding only

            List(viewModel.topics) { topic in
                NavigationLink(destination: TopicDetailsView(topic: topic)) {
                    Text(topic.title)
                }
            }
            .onAppear {
                viewModel.fetchTopics()
            }
        }
        .navigationBarHidden(true)
    }
}

