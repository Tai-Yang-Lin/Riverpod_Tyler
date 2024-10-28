# riverpod_tyler

#可繼續做的內容
1.排序功能補齊
2.點擊進去deatail後可以在顯示更多詳細資訊(從json裡面取)，甚至式播放影片

#小bug未修正
1.圖片讀取有時較慢，可能可以考慮作暫存檔之類的

# 開發環境
Flutter version: 3.19.6
IDE版本： Android Studio Jellyfish | 2023.3.1
電腦： win10

# 套件版本
cupertino_icons: ^1.0.6
logging: ^1.2.0
flutter_riverpod: ^2.6.1
go_router: ^14.3.0
http: ^1.2.2

## Build Command
```bash 
flutter build apk
flutter build web --web-renderer auto
flutter run -d chrome --web-renderer auto
```

## Build File
專案內
根目錄build/app/outputs/apk
根目錄build/web

## 變數命名規則
大駝峰(Upper Camel Case)、小駝峰(Lower Camel Case)、蛇行命名法(snake_case)
前綴詞：(事件處理:on)、(布爾值函數:is)、(異步函數:fetch)、(私有函數：_)

1.widget或class，類相關類型用大駝峰ex.HomePage
2.函數相關前綴詞+大駝峰ex.onButtonPressed()
3.一般變數名稱就用小駝峰ex.String userName = 'Intella';
4.私有變數使用_前綴(+小駝峰)ex.int _counterAmount = 0;
5.文件名稱使用蛇行命名法ex.login_page.dart


## 字體使用場景
Display很少用(主視覺等才會用)
Headline只用於Appbar
Title用於body裡的Title
body用於body裡的文字
label用於標籤按鈕元件那些
*Bottom Navigation Bar裡面有字算是label(標籤)
*預設幾乎都是使用Large字體


## 常見縮寫

UI 元件
btn: Button
lbl: Label
txt: Text
img: Image
icon: Icon
tf: TextField
cb: Checkbox
rb: RadioButton
sw: Switch
布局
col: Column
row: Row
cont: Container
scf: Scaffold
gv: GridView
lv: ListView
其他
ctx: Context
cfg: Configuration
svc: Service
repo: Repository
mgr: Manager
util: Utility
msg: Message
顏色
主色調等加入
pri: 主色調(primary)
sec: 次色調(secondary)
acc: 輔色調(accent)
ter: 跳色(tertiary)
sta: 狀態色調(status)
txt: 文字顏色(basic text)

-
dk: 深色 (Dark)
lt: 浅色 (Light)

-
blk: 黑色 (Black)
gry: 灰色 (Grey)
wht: 白色 (White)

-
red: 红色 (Red)
org: 橙色 (Orange)
ylw: 黄色 (Yellow)
grn: 绿色 (Green)
blu: 蓝色 (Blue)
pur: 紫色 (Purple)

-
pnk: 粉色 (Pink)
brn: 棕色 (Brown)
