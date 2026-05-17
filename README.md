# 📱 KTCT Trắc Nghiệm – Hướng Dẫn Build APK

## Yêu cầu cài đặt (một lần)

| Công cụ | Link tải |
|---------|---------|
| Node.js 18+ | https://nodejs.org |
| Android Studio | https://developer.android.com/studio |
| JDK 17+ | Đi kèm Android Studio |

---

## Build APK – 5 bước đơn giản

### Bước 1: Mở terminal, vào thư mục này
```bash
cd đường-dẫn/ktct-trac-nghiem-app
```

### Bước 2: Cài thư viện
```bash
npm install
```

### Bước 3: Thêm nền tảng Android
```bash
npx cap add android
```

### Bước 4: Đồng bộ file web vào Android
```bash
npx cap sync android
```

### Bước 5: Build APK
```bash
cd android
./gradlew assembleDebug
```

> **Windows:** Dùng `gradlew.bat assembleDebug` thay cho `./gradlew assembleDebug`

### Tìm file APK tại:
```
android/app/build/outputs/apk/debug/app-debug.apk
```

---

## Cài APK lên điện thoại

1. Copy file `app-debug.apk` vào điện thoại
2. Bật **"Cài từ nguồn không rõ"** trong Cài đặt > Bảo mật
3. Nhấn vào file APK để cài

---

## Cách nhanh hơn: Dùng dịch vụ online

Nếu không muốn cài Android Studio, dùng **Appetize.io** hoặc **PhoneGap Build**:

### Dùng PWA Builder (Miễn phí, dễ nhất):
1. Upload thư mục `www/` lên một web host (GitHub Pages, Netlify...)
2. Vào https://www.pwabuilder.com
3. Nhập URL → chọn Android → Download APK

---

## Cấu trúc project

```
ktct-trac-nghiem-app/
├── www/                    ← File web (không sửa)
│   ├── index.html          ← Trang chủ
│   └── KTCT/
│       ├── 1-60.html
│       ├── 61-110.html
│       └── ... (13 file đề thi)
├── capacitor.config.json   ← Cấu hình app
├── package.json
└── README.md
```

---

## Thông tin app

- **Tên app:** KTCT Trắc Nghiệm  
- **Package ID:** site.sngedu.ktct  
- **Nội dung:** 400+ câu hỏi KTCT Mác-Lênin + đề thi thử  
- **Tác giả gốc:** H.N.TấnHải – sngedu.site
