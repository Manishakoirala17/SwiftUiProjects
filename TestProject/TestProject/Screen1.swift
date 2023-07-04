//
//  Screen1.swift
//  TestProject
//
//  Created by Manisha on 04/07/23.
//

import SwiftUI

struct Screen1: View {
    var body: some View {
        NavigationView{
            VStack {
                List{
                    UserView()
                    Listview()
                }
                .listStyle(.insetGrouped)
                Button("Signout"){
                    
                }
                .foregroundColor(.red)
                .padding()
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Screen1_Previews: PreviewProvider {
    static var previews: some View {
        Screen1()
    }
}

struct UserView:View{
    var body: some View{
        HStack{
            Image(systemName: "person.fill")
                .font(.largeTitle)
                .foregroundColor(.gray)
            VStack(alignment:.leading){
                Text("Manishakoirala")
                    .font(.body)
                Text("manisha@dreamtusk.com")
            }
            
        }
    }
}

struct SectionView:View{
    var section :String
    var items:[String]
    
    var body: some View{
        Section("\(section)"){
            ForEach(items,id:\.self){item in
                Text("\(item)")

            }
        }
    }
}
struct Listview:View{
    var body: some View{
        Text("Default Workspace")
        SectionView(section: "Accesblity", items: ["Offline Components","Siri Shortcuts"])
        SectionView(section: "Preference", items: ["State Restoration","Security & Privacy"])
        SectionView(section: "General", items: ["About","Feedback","Rate Us"])
    }
}
