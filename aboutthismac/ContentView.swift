import SwiftUI

struct AboutThisMacView: View {
    var body: some View {
        // 使用 VStack 將所有內容垂直堆疊
        VStack(spacing: 16) {
            
            // 頂部間距
            Spacer()
                .frame(height: 20)


            // 1. 電腦圖片
                       // 使用您專案中的 icon.png
                       Image("icon")
                           .resizable() // 讓圖片可以縮放
                           .aspectRatio(contentMode: .fit) // 保持圖片比例
                           .frame(height: 150) // 設定高度，寬度會自動縮放
                           .shadow(radius: 5)
                           .padding(.bottom, 20)

            // 2. 主要標題
            Text("MacBook Air")
                .font(.system(size: 32, weight: .bold))

            // 3. 副標題
            Text("13吋，M2，2022年")
                .font(.title3)
                .foregroundColor(.secondary)
                .padding(.bottom, 20)

            // 4. 規格列表 (使用 Grid 實現整齊的左右對齊)
            Grid(alignment: .leading) {
                GridRow {
                    Text("晶片")
                        .fontWeight(.bold)
                        .gridColumnAlignment(.trailing) // 標題靠右
                    Text("Apple M2")
                }
                GridRow {
                    Text("記憶體")
                        .fontWeight(.bold)
                    Text("24 GB")
                }
                GridRow {
                    Text("啟動磁碟")
                        .fontWeight(.bold)
                    Text("Macintosh HD")
                }
                GridRow {
                    Text("序號")
                        .fontWeight(.bold)
                    Text("Set Your Serial Code Here")
                }
                GridRow {
                    Text("macOS")
                        .fontWeight(.bold)
                    Text("Sequoia 15.7.1")
                }
            }
            .font(.callout) // 統一設定字體大小
            
            // 5. 更多資訊按鈕
            Button(action: {
                // 在這裡加入點擊按鈕後的操作
                print("「更多資訊...」按鈕被點擊")
            }) {
                Text("更多資訊⋯")
                    .font(.system(size: 13, weight: .medium))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 6)
            }
            .background(Color.secondary.opacity(0.3))
            .cornerRadius(8)
            .buttonStyle(.plain) // 移除 macOS 預設的按鈕邊框
            .padding(.top, 10)

            // 底部間距
            Spacer()

            // 6. 底部版權文字
            VStack {
                Button(action: {
                    // 點擊「規範認證」的操作
                }) {
                    Text("規範認證")
                        .font(.caption)
                        .foregroundColor(.blue)
                }
                .buttonStyle(.plain)

                Text("™ and © 1983-2025 Apple Inc.\n保留一切權利。")
                    .font(.caption2)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
            }
            .padding(.bottom, 20)
            
        }
        .padding(.horizontal, 60) // 左右留白
        .frame(minWidth: 400, minHeight: 550) // 設定視窗的最小尺寸
        .preferredColorScheme(.dark) // 強制使用深色模式以匹配圖片
    }
}

// --- 用於預覽 ---
struct AboutThisMacView_Previews: PreviewProvider {
    static var previews: some View {
        AboutThisMacView()
    }
}
