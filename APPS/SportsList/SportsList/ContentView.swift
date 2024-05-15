//
//  ContentView.swift
//  SportsList
//
//  Created by csuftitan on 11/29/23.
//

import SwiftUI
import CoreData

class ContentViewModel: ObservableObject {
    //Storing the fetched data
    @Published var savedEntities: [SportsEntity] = []   //Step 5
    //Declaring the container
    let container: NSPersistentContainer        //Step 1
    
    init(){                                     //Step 2
        //Initiaiting it
        container = NSPersistentContainer(name: "SportsContainer")
        //Loading the data to the container
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Failed to load the data \(error)")
            } else {
                print("Successful connection!")
            }
        }
        fetchSports()                           //Step 6
    }
    //Creating data model file                  //Step 3
    func fetchSports() {                        //Step 4
        //Create the fetch request
        let request = NSFetchRequest<SportsEntity>(entityName: "SportsEntity")
        //using the request to fetch the data
        do{
            savedEntities = try container.viewContext.fetch(request)
        } catch let error{
            print("error while fetching the data \(error)")
        }
    }
    //Adding fruit means creating new entity and then storing and saving the data
    func addSports(text: String) {              //Step 7
        //creating new Sports Entity
        let newSports = SportsEntity(context: container.viewContext)
        //Passing value to the attribute
        newSports.name = text
        saveData()                              //Step 9
    }
    
    func saveData(){                            //Step 8
        do{
            try container.viewContext.save()
            //we need to save changes to our published var
            fetchSports()
        } catch let error {
            print("Error is \(error)")
        }

    }
    
    func deleteSports(indexSet: IndexSet) {     //Step 13
            guard let index = indexSet.first else { return }
            let entity = savedEntities[index]
            container.viewContext.delete(entity)
            saveData()
        }
        
}
    
struct ContentView: View {
    
    @StateObject var vm = ContentViewModel()        //Step 1.1
    
    @State var textFieldString: String = ""         //Step 10
    
    var body: some View {
        NavigationView{                             //Step 11
            VStack(spacing: 20){
                TextField("Add sports here...",text:$textFieldString)
                    .font(.headline)
                    .padding(.leading)
                    .frame(height: 55)
                    .background(Color.mint)
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                Button(action: {
                    //making sure user inputs at the least 1 character
                    guard !textFieldString.isEmpty else { return }
                    //Adding sports name to the model
                    vm.addSports(text: textFieldString)
                    //Setting it back to the default empty string
                    textFieldString = ""
                }, label: {
                    Text("Save")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.black)
                        .cornerRadius(10)
                })
                .padding(.horizontal)
                List{                           //Step 12
                    ForEach(vm.savedEntities) { entity in
                        Text(entity.name ?? "No Name")
                    }
                    .onDelete(perform: vm.deleteSports)
                    }
                }
                .listStyle(PlainListStyle())
                .navigationTitle("Sports")
            }
   
        }
    }


#Preview {
    ContentView()
}
