📚 6 Sefer Tekrar Prensibi ile Kelime Ezberleme Oyunu
Bu proje, kullanıcının İngilizce kelimeleri etkili bir şekilde ezberlemesi amacıyla geliştirilmiştir. Ezber algoritması,
6 farklı zaman diliminde doğru cevap verilmesini esas alır: 1 gün, 1 hafta, 1 ay, 3 ay, 6 ay ve 1 yıl. Bu süreklilik sayesinde kelimeler uzun süreli hafızaya kaydedilir.


🔧 Proje Özellikleri
✅ 1. Kullanıcı Yönetimi
Kayıt olma, giriş yapma, şifremi unuttum işlemleri
Kullanıcı bilgileri: kullanıcı adı, şifre vb.


✅ 2. Kelime Ekleme Modülü
Kelimeler İngilizce ve Türkçe karşılıklarıyla eklenebilir.
Ek olarak örnek cümleler, görseller eklenebilir.


✅ 3. Sınav Modülü (6 Sefer Tekrar Algoritması)
Her kelime, doğru şekilde ezberlenene kadar tekrar edilir.
Sistem, ezberlenmiş kelimeleri bir “bilinenler havuzuna” taşır.
Günlük testler, hem eski hem yeni kelimelerden rastgele oluşturulur.

✅ 4. Ayarlar
Kullanıcı, günlük testte karşısına çıkacak kelime sayısını (varsayılan: 10) değiştirebilir.
Tema rengi değiştirebilir.


✅ 5. Analiz Raporu
Kullanıcı, kelime bilgisi ile ilgili başarı yüzdesini görebilir.
Rapor çıktısı alınabilir.


🔄 Diğer Modüller
🧩 Bulmaca Modülü
🧩 Puzzle Modülü


## 🚀 Özellikler

- 🧠 **6 Aşamalı Öğrenme Sistemi:** Her kelime, doğru cevaplandıkça adım adım ilerler.
- 🔄 **Yanlışta Sıfırlama:** Yanlış cevaplanan kelime başa döner.
- 🎯 **Rastgele Şıklar:** 1 doğru + 3 yanlış anlam karışık şekilde gösterilir.
- 💡 **İpucu Gösterme:** Kelimenin örnek cümlesiyle ipucu sunar.
- 📊 **Kullanıcı Takibi:** Kullanıcı bazlı kelime ilerlemesi kayıt altında tutulur.
- 📁 **Form2 ile Detay Görüntüleme:** Kullanıcının öğrenme istatistiklerine veya ilerlemesine ait detaylar.

## 🏗️ Uygulama Yapısı

- `Form1`: Kelime sınavı arayüzü. Kullanıcıya soru sorar, şıkları sunar, sonucu gösterir.
- `Form2`: Kullanıcının ilerleme bilgilerini gösteren ikincil formdur (varsayılan olarak `Form1` üzerinden açılır).
- `WordModel`: Kelime verilerini taşıyan yardımcı model sınıfıdır.
- `WordProgress` Tablosu: Kullanıcının hangi adımda olduğunu, ne zaman cevap verdiğini ve öğrenip öğrenmediğini izler.

## 🧾 Veritabanı Yapısı

### Words Tablosu

| Alan Adı   | Açıklama         |
|------------|------------------|
| WordID     | Birincil anahtar |
| English    | İngilizce kelime |
| Turkish    | Türkçe karşılığı |
| Sentence   | Örnek cümle      |

### WordProgress Tablosu

| Alan Adı        | Açıklama                          |
|-----------------|-----------------------------------|
| UserID          | Kullanıcı ID                     |
| WordID          | Kelime ID                        |
| Step1 - Step6   | Aşama doğruluk bilgileri         |
| IsKnown         | Kelime tamamen öğrenildi mi?     |
| LastAnsweredDate| Son cevap tarihi                 |

## 🔧 Kurulum

1. Visual Studio ile projeyi aç.
2. SQL Server’da `veriYapi2` adında bir veritabanı oluştur ve `Words`, `WordProgress` tablolarını ekle.
3. `App.config` ya da `Form1.cs` içinde bulunan bağlantı cümlesini kendi SQL Server bilgine göre güncelle:
   ```csharp
   string baglantiCumlesi = "Server=DESKTOP-XXXX\\SQLEXPRESS;Database=veriYapi2;Trusted_Connection=True;";




🛠️ Kullanılan Teknolojiler
Programlama Dili: C# (.NET/Visual Studio)
Veritabanı: (Microsoft SQL)
