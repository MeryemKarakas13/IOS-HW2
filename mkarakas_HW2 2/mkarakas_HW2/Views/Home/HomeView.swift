//
//  ContentView.swift
//  mkarakas_HW2
//
//  Created by Meryem Karakaş on 15.11.2023.
//

import SwiftUI

struct HomeView: View {

    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
        NavigationStack {
            VStack(spacing: .zero) {
                startButton
            }
            .navigationTitle("Dog Brew Link App")
            .navigationBarTitleDisplayMode(.automatic)
            .sheet(
                isPresented: $viewModel.infoPresented
            ) {
                HomeView()
            }
        }
    }

    private var startButton: some View {
        HStack(spacing: .zero) {
            NavigationLink(
                destination: BreedListView()
            ) {
                Text(viewModel.buttonTitle)
                    .foregroundStyle(.buttonText)
                    .padding(.vertical, Spacing.padding_1)
                    .padding(.horizontal, Spacing.padding_4)
                    .overlay {
                        RoundedRectangle(cornerRadius: Radius.radius_4)
                            .stroke(.buttonBorder, lineWidth: 2)
                    }
            }
        }
        .padding(Spacing.padding_3)
    }
}

#Preview {
    HomeView()
        .preferredColorScheme(.dark)
}
