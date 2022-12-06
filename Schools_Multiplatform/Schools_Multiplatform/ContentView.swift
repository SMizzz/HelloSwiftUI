//
//  ContentView.swift
//  Schools_Multiplatform
//
//  Created by Jero on 2022/11/30.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedMenuItemID: MenuItem.ID?
    @State private var selectedSchoolItemID: SchoolItem.ID?
    
    var body: some View {
        // 2단
        /*
        NavigationSplitView {
            
        } detail: {
            
        }
         */
        
        // 3단
        NavigationSplitView {
            // Menu
            List(menuItems, selection: $selectedMenuItemID) { menuItem in
                Text(menuItem.name)
            }
        } content: {
            // Sub Menu
            List(schoolItems, selection: $selectedSchoolItemID) { schoolItem in
                Text(schoolItem.name)
            }
        } detail: {
            // sub menu에서 선택된 세부 콘텐츠
            SchoolDetailView(schoolId: selectedSchoolItemID)
        }
    }
}

struct SchoolDetailView: View {
    let schoolId: SchoolItem.ID?
    var schoolItem: SchoolItem? {
        get {
            for tempSchoolItem in schoolItems {
                if tempSchoolItem.id == schoolId {
                    return tempSchoolItem
                }
            }
            return nil
        }
    }
    
    var body: some View {
        VStack {
            Text("\(schoolItem?.description ?? "")")
        }
        .navigationTitle("\(schoolItem?.name ?? "")")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
