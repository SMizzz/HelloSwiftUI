//
//  MyScrollView.swift
//  UIScrollViewDemo
//
//  Created by Jero on 2022/11/02.
//

import SwiftUI

struct MyScrollView: UIViewRepresentable {
    
    var text: String
    
    // UIViewRepresentable 프로토콜을 따를 때 필수 구현 메서드
    // makeUIView & updateView
    func makeUIView(context: UIViewRepresentableContext<MyScrollView>) -> UIScrollView {
        // scrollView 인스턴스 생성
        let scrollView = UIScrollView()
        
        // scrollView는 context.coordinator를 따르겠다.
        scrollView.delegate = context.coordinator
        
        // refreshControl을 UIRefreshControl로 구성한다.
        scrollView.refreshControl = UIRefreshControl()
        
        // UIRefreshControl 인스턴스에 값이 변경되는 이벤트가 발생할 때 handleRefresh() 메서드가 호출된다.
        scrollView.refreshControl?.addTarget(context.coordinator, action: #selector(Coordinator.handleRefresh), for: .valueChanged)
        let myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        myLabel.text = text
        scrollView.addSubview(myLabel)
        return scrollView
    }
    
    func updateUIView(_ uiView: UIScrollView, context: UIViewRepresentableContext<MyScrollView>) {
        
    }
    
    // Coordinator 클래스의 인스턴스를 생성하고 뷰에 할당되도록 한다.
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UIScrollViewDelegate {
        var control: MyScrollView
        
        init(_ control: MyScrollView) {
            self.control = control
        }
        
        // 스크롤뷰가 스크롤이 되었을 때 호출되는 delegate
        func scrollViewDidScroll(_ scrollView: UIScrollView) {
            print("View is Scrolling")
        }
        
        // UIRefreshControl에 대한 이벤트가 발생할 때 실행되는 메소드
        @objc func handleRefresh(sender: UIRefreshControl) {
            // 작업이 끝난 후에는 refresh control의 endRefreshing() 메서드를 호출
            sender.endRefreshing()
        }
    }
}

struct MyScrollView_Previews: PreviewProvider {
    static var previews: some View {
        MyScrollView(text: "UIView : ScrollView In SwiftUI")
    }
}
