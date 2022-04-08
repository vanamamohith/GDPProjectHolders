//
//  ContentView.swift
//  gridViewTable
//
//  Created by student on 4/1/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        var arr1 = ["Vaccine","Vaccination Name","Date","Administration Clinic"]
        var arr2 = ["1st Dose"," "," "," "]
        var arr3 = ["2nd Dose"," "," "," "]
        var arr4 = ["Others"," "," "," "]
        
//        VStack {
//            HStack{
//                Label{
//                    //Text("Swift").foregroundColor(Color.red)
//                }
//
//                icon: {
//                    Image(systemName: "line.3.horizontal").foregroundColor(Color.black)
//                }
//
//                Label("Welcome Sai!", systemImage: "system.fill")
//                    .padding(.horizontal, 80.0)
//
//                Label{
//                    //Text("Swift").foregroundColor(Color.red)
//                }
//                icon: {
//                    Image(systemName: "person.fill").foregroundColor(Color.black)
//            }
//            }
//            HStack{
//            VStack{
//                Label("", systemImage: "")
//                Label("", systemImage: "")
//                Label("*******", systemImage: "")
//
//                Label("---------------", systemImage: "")
//
//                Label("LastName", systemImage: "")
//            }
//            .padding(.horizontal, 30.0)
//                VStack{
//                    Label("", systemImage: "")
//                    Label("", systemImage: "")
//                    Label("*******", systemImage: "")
//
//                    Label("---------------", systemImage: "")
//
//                    Label("FirstName", systemImage: "")
//                }
//                .padding(.horizontal, 30.0)
//            }
            NavigationView{
                    ScrollView{
                        LazyVGrid(columns: [
                            GridItem(.fixed(100), spacing: 0),
                            GridItem(.fixed(100), spacing: 0),
                            GridItem(.fixed(100), spacing: 0),
                            GridItem(.fixed(100), spacing: 0)
                        ], spacing: 0, content: {
                            
                            ForEach(0..<(arr1.count + arr2.count + arr3.count + arr4.count), id: \.self)
                            {num in
                            HStack{
                                Spacer()
                                if(num>=0 && num<4){
                                Text("\(arr1[num])")
                                }
                                else if(num>=4 && num<8)
                                {
                                    var x = num-4;
                                    Text("\(arr2[x])")
                                }
                                else if(num>=8 && num<12)
                                {
                                    var x = num-8;
                                    Text("\(arr3[x])")
                                    
                                }
                                else if(num>=12 && num<16)
                                {
                                    var x = num-12;
                                    Text("\(arr4[x])")
                                    
                                }
                               Spacer()
                            }
                            .padding(.vertical)
                            .font(.system(size: 8))
                            .border(Color.black)
                                
                            }
                            
                        })
                            .navigationBarItems(leading: Button(action: {}, label: {Image(systemName: "person.fill").foregroundColor(.black)}))
                            .navigationBarItems(leading: Button("Welcome"){
                                print("Welcome sai!")
                            })
                            .navigationBarItems(leading: Button(action: {}, label: {Image(systemName: "line.3.horizontal").foregroundColor(.black)}))
                            
                        
                        
                    }
            }
        }
        }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
