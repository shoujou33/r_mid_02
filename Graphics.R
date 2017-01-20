str(trees)
par(mfrow = c(3, 4)) # 以三列四行向右依序的方式列圖
# 散佈圖
plot(trees$Girth, trees$Height, main = "Trees' Grith vs. Height",
     xlab = "Grith (inches)", ylab = "Height (ft.)", pch = 5, col = 2)
plot(trees$Girth, trees$Volume, main = "Trees' Grith vs. Timbers' Volume",
     xlab = "Grith (inches)", ylab = "Volume (cubic ft.)", pch = 4, col = 4)
# 線圖
plot(trees$Girth, trees$Height, type = "o", main = "Trees' Grith vs. Height",
     xlab = "Grith (inches)", ylab = "Height (ft.)", pch = 17, lty = 2, col = 6)
plot(trees$Girth, trees$Volume, type = "o", main = "Trees' Grith vs. Timbers' Volume",
     xlab = "Grith (inches)", ylab = "Volume (cubic ft.)", col = 3)
# 直方圖
hist(trees$Height, main = "Distribution of Height Variable",
     xlab = "Height (ft.)", col = "lightblue", border = "pink")
hist(trees$Volume, main = "Distribution of Volume Variable",
     xlab = "Volume (cubic ft.)", col = "lightblue", border = "pink")

# 盒鬚圖
boxplot(trees$Girth, main = "Distridution of Trees' Grith", col = "bisque")
boxplot(trees$Height, main = "Distridution of Trees' Hegitht", col = "bisque")
boxplot(trees$Volume, main = "Distridution of Timbers' Volume", col = "bisque")

# 長條圖
summary(trees$Girth)
g_group <- cut(trees$Girth, breaks = c(8, 11.5, 15.25, 21), labels = c("Small", "Medium", "Large"))
barplot(table(factor(g_group)), main ="Quantities of Trees' Girth Size", col = "yellow", border = "orange")
summary(trees$Height)
h_group <- cut(trees$Height, breaks = c(-Inf, 72, 80, Inf), labels = c("Short", "Medium", "Tall"))
barplot(table(factor(h_group)), main = "Quantities of Trees' Height Level", col = "yellow", border = "orange")
summary(trees$Volume)
v_group <- cut(trees$Volume, breaks = c(-Inf, 19.4, 37.3, Inf), labels = c("Small", "Medium", "Large"))
barplot(table(factor(v_group)), main = "Quantities of Timbers' Voulume", col = "yellow", border = "orange")
