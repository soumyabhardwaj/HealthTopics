//
//  TopicViewModel.swift
//  MaxAssignment
//
//  Created by soumya bhardwaj on 17/11/23.
//

import SwiftUI
import Combine

class TopicViewModel: ObservableObject {
    @Published var topics: [HealthTopic] = []

    private var cancellables: Set<AnyCancellable> = []

    func fetchTopics() {
        guard let url = URL(string: "https://health.gov/myhealthfinder/api/v3/itemlist.json?Type=topic") else {
            return
        }

        URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .sink { completion in
                switch completion {
                case .finished:
                    break // Do nothing on success
                case .failure(let error):
                    print("Error: \(error)")
                }
            } receiveValue: { data in
                do {
                    let topicsResponse = try JSONDecoder().decode(TopicsResponse.self, from: data)
                    let extractedTopics = topicsResponse.Result.Items.Item
                    print("Extracted topics: \(extractedTopics)")

                    self.topics = extractedTopics
                } catch {
                    print("Decoding error: \(error)")
                }
            }
            .store(in: &cancellables)
    }
}

