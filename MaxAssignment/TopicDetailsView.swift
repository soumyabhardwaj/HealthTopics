//
//  TopicDetailsView.swift
//  MaxAssignment
//
//  Created by soumya bhardwaj on 17/11/23.
//
import SwiftUI

struct TopicDetailsView: View {
    let topic: HealthTopic

    var body: some View {
        VStack {
            Text(topic.title)
                .font(.title)

            HStack {
                Text("Topic ID:")
                    .font(.headline)
                    .foregroundColor(.gray)
                Text(topic.id)
                    .font(.subheadline)
            }
            .padding(.top, 8)
        }
        .padding()
    }
}

