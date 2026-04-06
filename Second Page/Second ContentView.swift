//
//  Second ContentView.swift
//  Ch01
//
//  Created by Han on 3/31/26.
//

import SwiftUI

struct Second_ContentView: View {
    //메인 데이터 끌어오는 것
    let data: ActivityInfo
    //모임신청자에 들어갈 데이터 배열
    var guestData: [GuestData] = [GuestData(guestName: "Hida", classTime: "오전반", interested: "운동", process: "신청완료")]
    
    //    모집중, 모집완료 태그
    @State var status: Bool = true
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            //모집상태 태그
                            GatheringStatus(status: status)
                            
                            //모집 제목
                            Text(data.title)
                                .font(.title)
                                .bold()
                                .padding(.bottom,32)
                                .fixedSize(horizontal: false, vertical: true)
                            
                            //모임정보 타이틀
                            Text("모임 정보")
                                .font(.title2)
                                .bold()
                                .padding(.bottom,12)
                            
                            //장소
                            HStack {
                                Image(systemName: "mappin.circle")
                                    .padding(.trailing, 8)
                                Text(data.place)
                            }
                            .padding(.bottom,4)
                            
                            //시간
                            HStack {
                                Image(systemName: "person.badge.clock")
                                    .padding(.trailing, 8)
                                Text(data.time)
                            }
                        }
                        Spacer()
                    }
                }
                .padding(.horizontal,20)
                .padding(.top,40)
                .padding(.bottom,24)
                
                //모집신청자 컴포넌트 조합
                VStack(alignment: .leading) {
                    //모임 신청자 타이틀
                    HStack {
                        Text("모임 신청자")
                            .font(.title2)
                            .bold()
                            .padding(.trailing,2)
                        
                        Text("3/3")
                            .font(.callout)
                            .foregroundStyle(.gray)
                            .padding(.vertical,2)
                            .padding(.horizontal,8)
                            .background {
                                Capsule()
                                    .fill(Color(.systemGray5))
                            }
                        
                        Spacer()
                        
                        Text("더보기")
                            .foregroundStyle(.gray)
                            .padding(.trailing,4)
                    }
                    .padding(.bottom,12)

                    GuestDetail(image: "Profile20",guestName: "Joey", classTime: "오전반", guestInterested: "운동 · 식사/술 · 공부", process: "신청완료")
                    GuestDetail(image: "Profile18",guestName: "Rachel", classTime: "오전반", guestInterested: "운동 · 식사/술 · 공부", process: "신청완료")
                    GuestDetail(image: "Profile21",guestName: "Monica", classTime: "오후반", guestInterested: "운동 · 식사/술 · 공부", process: "신청완료")
                    GuestDetail(image: "Profile11",guestName: "Chandler", classTime: "오전반", guestInterested: "운동 · 식사/술 · 공부", process: "신청대기")
                    GuestDetail(image: "Profile1",guestName: "Ross", classTime: "오후반", guestInterested: "운동 · 식사/술 · 공부", process: "신청대기")
                    
                }
                .padding(.horizontal,20)
                .padding(.bottom,80)
            }
            
            //플로팅 버튼
            Button(action: {
            }) {
                Text("신청하기")
                    .font(.title3)
                    .bold()
                    .foregroundColor(.black)
                    .padding(.top,20)
            }
            .frame(width: 410)
            .background(Color.accent)
        }
    }
}

#Preview {
    //    Second_ContentView(data: ActivityInfo(title: "오늘 1시간 정도 테니스 랠리할 분 구해요", place: "테니스장 BC코트", time: "04/05 20:00", status: true, hosts: Host(name: "Hida", image: "Profile1"), guests: "ddd", guestCount: "3/4명"))
    Second_ContentView(data: ActivityInfo(title: "오늘 1시간 정도 테니스 칠 사람 구합니당", place: "테니스장", time: "18:00", status: false, hosts: Host(name: "Han", image: "profile1"), guests: [Guest(prifleImage: "profile1")], guestCount: "3/4명"), guestData: [GuestData(guestName: "Han", classTime: "오후반", interested: "운동", process: "신청대기")], status: true)
}
