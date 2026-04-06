//
//  GatheringCardView.swift
//  Ch01
//
//  Created by Han on 3/29/26.
//

import SwiftUI

struct GatheringCardView: View {
    var title: String
    var place:  String
    var time: String
    
//    모집중, 모집완료 태그
    @State var status: Bool = true
    
//People Profile 변수 선언
    @State var hosts: Host
    @State var guests: [Guest]
    var guestCount: String
    

    var body: some View {
        VStack(alignment: .leading) {
            //모집중, 모집완료 태그 코드 #1
            GatheringStatus(status: status)
            
            //모집중, 모집완료 태그 코드 #2
//            Text(text)
//                .font(.subheadline)
//                .fontWeight(.bold)
//                .foregroundColor(.green)
//                .padding(.horizontal, 12)
//                .padding(.vertical, 6)
//                .background {
//                    Capsule()
//                        .fill(Color.green.opacity(0.1))
//                        .stroke(.green, lineWidth: 1)
//                }
//                .padding(.bottom,8)
            
            //타이틀
            Text(title)
                .font(.system(size: 17))
                .fontWeight(.semibold)
                .padding(.bottom,4)
            
            //장소, 시간
            HStack {
                //장소
                HStack {
                    Image(systemName: "mappin.circle")
                    Text(place)
                }
                .font(.system(size: 14))
                .fontWeight(.semibold)
                .foregroundStyle(Color(.darkGray))
                
                //구분점
                Text("·")
                
                //시간
                HStack {
                    Image(systemName: "person.badge.clock")
                    Text(time)
                }
                .font(.system(size: 14))
                .fontWeight(.semibold)
                .foregroundStyle(Color(.darkGray))
            }
            .padding(.bottom,4)
            
            //주최자, 참여자 프로필
            PeopleProfile(host: hosts, guests: guests, guestCount: guestCount)
            
            //구분선
            Divider()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 24)
        .padding(.top)
    }
}

#Preview {
    GatheringCardView(
        title: "오늘 밤에 테니스 칠 사람~",
        place: "테니스코트",
        time: "03/29 18:00",
        status: true,
        hosts: Host(name: "han", image: "profile1"),
        guests: [Guest(prifleImage: "profile2"), Guest(prifleImage: "profile3")],
        guestCount: "3/2"
    )
}
