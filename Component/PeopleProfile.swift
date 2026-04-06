//
//  PeopleProfile.swift
//  Ch01
//
//  Created by Han on 3/30/26.
//

import SwiftUI


struct PeopleProfile: View {
    //호스트 이름, 게스트 수
    @State var host: Host
    var guests: [Guest]
    var guestCount: String
    
    var body: some View {
        HStack {
            //주최자 프로필 이미지, 주최자 이름
            HStack {
                Image(host.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 32, height: 32)
                    .clipShape(Circle())
                
                Text(host.name)
                    .font(.body)
                    .foregroundColor(.black)
            }
            .padding(.vertical,8)
            .padding(.trailing,16)
            
            HStack(spacing: 0) {
                //참여자 프로필(guestNum1의 수에 따라서 프로필이 결정됨) -> 그렇다면 아래 코드를 foreach로 계속 돌려야겠지..?
                ForEach(guests) { guest in
                    Image(guest.prifleImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                }
                .padding(2)
                Text(guestCount)
                    .padding(.leading,8)
            }
        }
    }
}

#Preview {
    PeopleProfile(host: Host(name: "Han", image: "Profile1"), guests: [Guest(prifleImage: "Profile3"), Guest(prifleImage: "Profile4")], guestCount: "2/4")
}

