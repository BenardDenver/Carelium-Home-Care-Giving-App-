//
//  DatePicker.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 28/10/2025.
//
import SwiftUI

struct DatePickerView: View {
    @State private var birthDate: Date = Date()
    @State private var showingDatePicker: Bool = false // State to control date picker visibility

    var body: some View {
        VStack {
            // Display the selected date in a Text field
            Text("Date of Birth: \(birthDate, formatter: dateFormatter)")
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .onTapGesture {
                    showingDatePicker.toggle() // Toggle visibility on tap
                }

            // The DatePicker itself, conditionally shown
            if showingDatePicker {
                DatePicker(
                    "Select Date", // Label for accessibility
                    selection: $birthDate,
                    in: ...Date(), // Restrict selection to past dates
                    displayedComponents: .date // Display only date components
                )
                .datePickerStyle(.graphical) // Or .wheel, .compact
                .padding()
            }
        }
        .overlay{
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 1)
                .foregroundStyle(.orange)
        }
    }

    // DateFormatter to display the date in a readable format
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }
}

#Preview{
    DatePickerView()
}
