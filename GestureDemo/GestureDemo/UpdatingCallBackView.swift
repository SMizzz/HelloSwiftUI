//
//  UpdatingCallBackView.swift
//  GestureDemo
//
//  Created by Jero on 2022/11/01.
//

import SwiftUI

struct UpdatingCallBackView: View {
    @GestureState private var offset: CGSize = .zero
    @GestureState private var longPress: Bool = false
    @State private var dragEnabled: Bool = false
    
    var body: some View {
        let longPressAndDrag = LongPressGesture(minimumDuration: 1.0)
            .onEnded { value in
                self.dragEnabled = true
            }
            .sequenced(before: DragGesture())
            .updating($offset) { value, state, transaction in
//                state = value.second?.translation ?? . zero
                
                switch value {
                case .first(true):
                    print("Long Press in progress")
                case .second(true, let drag):
                    state = drag?.translation ?? .zero
                default:
                    break
                }
            }
            .onEnded { value in
                self.dragEnabled = false
            }
        
        /*
        let drag = DragGesture()
        //onChanged보다 더 세밀한 작업을 할 수 있다.
            .updating($offset, body: { dragValue, state, transaction in
                // 일시적으로 수행한다.
                state = dragValue.translation
                
                print("updating \(dragValue)")
                print("\(state)")
                print("\(transaction)")
            })
            .onEnded { _ in
                print("Drag Ended")
            }
        */
        VStack {
            Image(systemName: "hand.point.right.fill")
                .resizable()
                .offset(offset)
           
                .foregroundColor(longPress ? Color.red : Color.green)
                .frame(width: 100, height: 90)
            
                .gesture(longPressAndDrag)
        }
    }
}

struct UpdatingCallBackView_Previews: PreviewProvider {
    static var previews: some View {
        UpdatingCallBackView()
    }
}
