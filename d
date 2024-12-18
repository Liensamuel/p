import cv2
import matplotlib.pyplot as plt
from google.colab import drive

# 掛載Google Drive
drive.mount('/content/drive')

# 讀取存在Google Drive中的檔案
image_path = '/content/drive/MyDrive/期末報告/DIP_Final_Project_Images/Rose.bmp'

# 讀取影像
image = cv2.imread(image_path)

# 檢查是否成功讀取影像
if image is None:
    print("Error: Unable to read the image.")
else:
    # 轉換成不同色彩模型
    rgb_image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)

    # RGB to CMY 轉換
    cmy_image = 255 - rgb_image

    hsi_image = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
    hsv_image = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
    ycrcb_image = cv2.cvtColor(image, cv2.COLOR_BGR2YCrCb)

    # 顯示不同模型的輸出圖
    plt.figure(figsize=(15, 3))

    plt.subplot(151), plt.imshow(rgb_image), plt.title('RGB Model')
    plt.subplot(152), plt.imshow(cmy_image), plt.title('CMY Model')
    plt.subplot(153), plt.imshow(hsi_image), plt.title('HSI Model')
    plt.subplot(154), plt.imshow(hsv_image), plt.title('HSV Model')
    plt.subplot(155), plt.imshow(ycrcb_image), plt.title('YCrCb Model')

    plt.show()
