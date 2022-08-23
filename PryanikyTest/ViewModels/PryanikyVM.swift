//
//  PryanikyVM.swift
//  PryanikyTest
//
//  Created by Artem Paliutin on 23/08/2022.
//

import Foundation
import Combine


class PryanikyVM: ObservableObject {
        
    @Published private(set) var data: [Pryaniky.DataResult] = []
    @Published private(set) var orderViews: [Pryaniky.OrderView] = []
    
    var cancellable = Set<AnyCancellable>()
    
    init() {
        getData()
    }
    
    // MARK: - Functions
    
    private func getData() {
        guard let url = URL(string: "https://pryaniky.com/static/json/sample.json") else { return }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .tryMap { output in
                guard
                    let response = output.response as? HTTPURLResponse,
                    response.statusCode >= 200 && response.statusCode < 300 else {
                    throw URLError(.badServerResponse)
                }
                return output.data
            }
            .decode(type: Pryaniky.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
            .sink { completion in
                switch completion {
                case .finished:
                    print("✅ Completion OK \(completion)")
                case .failure(let error):
                    print("❗️ Error: \(error.localizedDescription)")
                }
            } receiveValue: { [weak self] returnedData in
                self?.data = returnedData.data
                self?.orderViews = returnedData.view
            }
            .store(in: &cancellable)

    }
}

