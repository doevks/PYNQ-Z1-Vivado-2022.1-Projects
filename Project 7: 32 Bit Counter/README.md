# 32 Bit Counter

- Amaç: FCLK_CLK0 ile çalışan, Python tarafından enable/reset kontrol edilen bir sayaç oluşturmak.

- Sıralı devrede değer clock kenarında güncellenir.
- 100 MHz saat nedeniyle alt bitler çok hızlı değişir; Python okumasında üst bitler veya bölünmüş sayaç daha
anlamlıdır.
- Senkron reset, rising_edge bloğu içinde uygulanır.

Bu projede görüleceği üzere ayrıca testbench kullanılmıştır. 
