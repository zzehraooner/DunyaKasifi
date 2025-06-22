# 🌍 Dünya Kaşifi – Artırılmış Gerçeklik Tabanlı Eğitim Uygulaması

**Dünya Kaşifi**, çocuklara dünyayı ve kültürleri eğlenceli ve etkileşimli bir şekilde öğretmek amacıyla geliştirilmiş AR (Artırılmış Gerçeklik) tabanlı bir iOS eğitim uygulamasıdır. Swift ve SwiftUI teknolojileri ile geliştirilen uygulama, ARKit & RealityKit desteği ile 3D içerikleri gerçek dünyaya taşıyarak çocuklara keşif dolu bir öğrenme deneyimi sunar.

---

## 🚀 Özellikler

- 🏛️ **AR ile 3D Tarihi Yapılar:** Ayasofya, Eyfel Kulesi gibi yapılar gerçek zamanlı olarak 3D modelleme ile görüntülenir.
- 🌎 **Kültürel Keşifler:** 50'den fazla ülkeye ait mutfak, gelenek, tarih gibi kültürel bilgiler interaktif olarak sunulur.
- 🎮 **Eğitici Mini Oyunlar:** Çocuklar için hazırlanan oyunlar sayesinde keşif görevleriyle öğrenme sağlanır.
- 📚 **Dil Öğrenme Aktiviteleri:** Temel kelimeler, selamlaşmalar, sayılar ve renkler oyunlaştırma ile öğretilir.
- 🏅 **Rozet Sistemi ve Koleksiyon:** Başarıya dayalı rozet kazanımı ve özel koleksiyonlar ile motivasyon artırılır.
- 👁️ **Göz Sağlığı Dostu Kullanım:** 20 dakikada bir dinlenme hatırlatıcıları ile sağlıklı ekran kullanımı teşvik edilir.
- 🔒 **Ebeveyn Kontrolleri:** İçerik filtreleme ve süre sınırlamaları ile güvenli kullanım.

---

## 🧱 Teknolojiler

| Katman         | Kullanılan Teknoloji          |
|----------------|-------------------------------|
| UI             | SwiftUI                       |
| AR             | ARKit & RealityKit            |
| Konum          | CoreLocation                  |
| Veri Yönetimi  | SwiftData, Combine            |
| Mimari         | MVVM (Model-View-ViewModel)   |

---

## 💻 Kurulum Adımları

1. **Projeyi Klonlayın:**
```bash
git clone https://github.com/kullaniciadi/DunyaKasifi.git
cd DunyaKasifi
```

2. **Xcode ile Açın:**
   - `DunyaKasifi.xcodeproj` dosyasını açın.
   - Simülatör veya bağlı cihazı seçin.

3. **AR Modelleri Eksikse:**
```bash
git lfs pull
```

4. **Uygulamayı Başlatın:**
   - `Cmd + R` tuşlarıyla uygulamayı çalıştırın.

---

## 📱 Gereksinimler

- macOS Ventura 13.5 veya üzeri
- Xcode 15 veya üzeri
- Swift 5.9+
- Gerçek iOS cihaz (AR testleri için)
- Git & Git LFS

---

## 🧩 Yaygın Hatalar ve Çözümleri

| Hata                            | Çözüm                                                                 |
|----------------------------------|------------------------------------------------------------------------|
| Missing Package Dependencies     | Xcode > File > Packages > Reset Package Caches                        |
| AR Modelleri Yüklenmiyor         | `git lfs pull` komutunu çalıştırın                                    |
| Signing Certificate Error        | Xcode > Signing & Capabilities > Team: Apple ID'nizi seçin            |
| ARKit Simülatörde Çalışmaz       | Gerçek cihazda test edin                                              |
| App Crashes on Launch            | Xcode Console ile hata detaylarını kontrol edin                        |
| Kamera İzin Hatası               | Info.plist dosyasına `NSCameraUsageDescription` ekleyin               |
| Uygulama Yavaş Çalışıyor         | Model boyutlarını küçültün, asenkron yükleme yapın                    |
| Out of Memory (Bellek Hatası)    | Kullanılmayan kaynakları serbest bırakın                              |

---

## 🔐 Ebeveyn Ayarları

- Süre sınırlamaları ayarlanabilir.
- İçerik filtreleme yapılabilir.
- Göz dinlenme hatırlatıcıları aktif edilebilir.

---

## 🧑‍💻 Katkıda Bulunmak

Pull request gönderebilir veya issue oluşturarak katkıda bulunabilirsiniz. Yeni ülkeler, mini oyunlar veya dil destekleri eklemek için katkılarınızı bekliyoruz.

---

