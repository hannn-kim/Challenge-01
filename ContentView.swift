//
//  ContentView.swift
//  Ch01
//
//  Created by Han on 3/27/26.
//

import SwiftUI

struct ContentView: View {
    //이슈랑 코드 연결해서 커밋하는거 테스트
    //깃허브 테스트 두번째임
    
    //더미데이터들
    let data: [ActivityInfo] = [
        //1번째 더미데이터 (마지막 콜론 까먹지 말기)
        ActivityInfo(title: "오늘 1시간 정도 테니스 랠리할 분 구해요", place: "테니스장 BC코트", time: "04/05 20:00", status: true, hosts: Host(name: "Hida", image: "Profile1"), guests: [Guest(prifleImage: "Profile2"), Guest(prifleImage: "Profile3")], guestCount: "2/3명"),
        //2번째 더미데이터
        ActivityInfo(title: "소디스에서 카공할 사람~", place: "소디스 카페", time: "04/05 18:00", status: true, hosts: Host(name: "Linku", image: "Profile17"), guests: [Guest(prifleImage: "Profile5"), Guest(prifleImage: "Profile6"), Guest(prifleImage: "Profile7")], guestCount: "3/4명"),
        //3번째 더미데이터
        ActivityInfo(title: "오늘 밤 10시에 통집 가실 분!", place: "통나무집", time: "04/05 22:00", status: false, hosts: Host(name: "Asher", image: "Profile11"), guests: [Guest(prifleImage: "Profile9"), Guest(prifleImage: "Profile10")], guestCount: "2/2명"),
        //4번째 더미데이터
        ActivityInfo(title: "F1 경기 같이 볼 사람 찾아용", place: "24시 커뮤니티 센터", time: "04/04 20:00", status: true, hosts: Host(name: "Yoojun", image: "Profile13"), guests: [Guest(prifleImage: "Profile4"), Guest(prifleImage: "Profile8"), Guest(prifleImage: "Profile17")], guestCount: "3/4명"),
        //5번째 더미데이터
        ActivityInfo(title: "바다뷰 카페에서 공부 같이 해요!", place: "스타벅스 송도점", time: "04/03 14:00", status: false, hosts: Host(name: "Qwerty", image: "Profile14"), guests: [Guest(prifleImage: "Profile5"), Guest(prifleImage: "Profile18"), Guest(prifleImage: "Profile11")], guestCount: "3/3명"),
        //6번째 더미데이터
        ActivityInfo(title: "같이 야구장 갈 사람?!", place: "포항 야구장", time: "04/04 21:00", status: true, hosts: Host(name: "Bibi", image: "Profile15"), guests: [Guest(prifleImage: "Profile12"), Guest(prifleImage: "Profile19")], guestCount: "2/3명"),
        //7번째 더미데이터
        ActivityInfo(title: "오후 세션 끝나고 같이 초밥 먹을 사람?!", place: "가정초밥", time: "04/03 18:00", status: false, hosts: Host(name: "Youmei", image: "Profile16"), guests: [Guest(prifleImage: "Profile20")], guestCount: "1/1명"),
        
    ]
    
    //세번째 커밋, 푸쉬 연습. 버전을 어떻게 볼 수 있는지 확인해야겠음
    
    var body: some View {
        NavigationStack {
            //프로필 이미지, 이름, 오전/오후반
            HStack {
                Profile()
                VStack {
                    UserName()
                    ClassTime()
                }
            }
            .padding(.horizontal,20)
            .padding(.top,28)
            .padding(.bottom,10)
            
            //필터바
            FilterBar()
            
            //구분선
            Divider()
            
            //리스트들
            ZStack(alignment: .bottomTrailing) {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        ForEach(data) { item in
                            NavigationLink(destination: Second_ContentView(data: item)) {
                                GatheringCardView(title: item.title, place: item.place, time: item.time, status: item.status, hosts: item.hosts, guests: item.guests, guestCount: item.guestCount)
                            }
                            .buttonStyle(.plain)
                        }
                        
                        //                GatheringCardView(title: data[0].title, place: data[0].place, time: data[0].time)
                        //                GatheringCardView(title: data[1].title, place: data[1].place, time: data[1].time)
                        //                GatheringCardView(title: data[2].title, place: data[2].place, time: data[2].time)
                        //                GatheringCardView(title: data[3].title, place: data[3].place, time: data[3].time)
                        //                GatheringCardView(title: data[4].title, place: data[4].place, time: data[4].time)
                    }
                }
                //게시글 작성 플로팅 버튼 코드
                Button(action: {
                }) {
                    Text("게시글 작성")
                        .font(.title3)
                        .bold()
                        .foregroundColor(.black)
                        .padding(.vertical, 18)
                        .padding(.horizontal, 22)
                        .background(Color.accent)
                        .cornerRadius(8)
                }
                .padding(.trailing, 32)
                .padding(.bottom, 12)
            }
        }
    }
}

#Preview {
    ContentView()
}
