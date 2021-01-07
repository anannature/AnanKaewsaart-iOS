//
//  ContentView.swift
//  AnanKaewsaart iOS Developer
//
//  Created by Anan Kaewsaart on 7/1/2564 BE.
//  Copyright © 2564 Anan Kaewsaart. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Air : Identifiable {
    
    var id : Int
    var title : String
    var image : String
    var detail: String
}

struct Home: View {

    var air_data = [
        
        Air(id: 0, title: "20/06/2020", image: "cycle", detail: "Fog"),
        
        Air(id: 1, title: "29/06/2020", image: "energy", detail: "Thunderstorm"),
        
        Air(id: 2, title: "30/06/2020", image: "heart", detail: "Broken clouds"),
        
        Air(id: 3, title: "01/07/2020", image: "running", detail: "Light shower snow"),
        
        Air(id: 4, title: "02/07/2020", image: "sleep", detail: "Extreme rain"),
        
        Air(id: 5, title: "03/07/2020", image: "steps", detail: "Clear sky"),
        
        Air(id: 6, title: "04/07/2020", image: "running", detail: "Scattered clouds"),
        
        Air(id: 7, title: "05/07/2020", image: "cycle", detail: "Shower rain"),
    ]
    
    var body: some View {
        
        List(air_data, id: \.id) { air in
            HStack{
                
                VStack {
                    HStack{
                        Text(air.title)
                    }
                    .padding(.leading, -20)
                    
                    HStack{
                        Text(air.detail)
                    }
                    .padding(.leading, -20)
                }
                .padding(.leading, 5)
                .padding(.bottom, 10)
                .padding(.top, 10)
                
                Spacer()
                HStack {
                    Image(air.image)
                }
            }
            
        }
        
    }
}


