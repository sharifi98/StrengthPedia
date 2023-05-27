//
//  RoutineList.swift
//  StrengthPedia
//
//  Created by Hossein Sharifi on 27/05/2023.
//

import SwiftUI

struct RoutineList: View {
    
    @EnvironmentObject var modelDataRoutine: ModelDataRoutine
    
    var body: some View {
        NavigationView {
            List {
                ForEach(modelDataRoutine.routines) { routine in
                    NavigationLink(destination: RoutineDetail(routine: routine)) {
                        Text(routine.name)
                    }
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Routines")
        }
    }
}

struct RoutineList_Previews: PreviewProvider {
    static var previews: some View {
        RoutineList()
            .environmentObject(ModelDataRoutine())
    }
}
