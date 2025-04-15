# Bai4_Cua_Dat_Nha
# HQTCSDL_Đặng_Đình_Đạt_truy vấn thông tin

bai tap 4: (sql server)
yêu cầu bài toán:
 - Tạo csdl cho hệ thống TKB (đã nghe giảng, đã xem cách làm)
 - Nguồn dữ liệu: TMS.tnut.edu.vn
 - Tạo các bảng tuỳ ý (3nf)
 - Tạo được query truy vấn ra thông tin gồm 4 cột: họ tên gv, môn dạy, giờ vào lớp, giờ ra.
   trả lời câu hỏi: trong khoảng thời gian từ datetime1 tới datetime2 thì có những gv nào đang bận giảng dạy.

các bước thực hiện:
1. Tạo github repo mới: đặt tên tuỳ ý (có liên quan đến bài tập này)
2. tạo file readme.md, edit online nó:
   paste những ảnh chụp màn hình
   gõ text mô tả cho ảnh đó

Gợi ý:
  sử dung tms => dữ liệu thô => tiền xử lý => dữ liệu như ý (3nf)
  tạo các bảng với struct phù hợp
  insert nhiều rows từ excel vào cửa sổ edit dữ liệu 1 table (quan sát thì sẽ làm đc)
  

deadline: 15/4/2025
# -------------------BÀI LÀM---------------------
Ảnh 1:  
Tạo cơ sở dữ liệu có tên là BaiTap3(đã sửa thành BaiTap4 rùi nha nhầm tí thui) và chọn 1 vị trí lưu mình mong muốn.  
![Screenshot 2025-03-28 153438](https://github.com/user-attachments/assets/e2286be3-222a-4f55-8aaf-c5035969c860)  

Ảnh 2:  
Tạo bảng " GV " và cho MaGV tự động tăng bắt đầu từ 1 và mỗi lần tăng lên 1 đơn vị.  
![Screenshot 2025-04-15 000252](https://github.com/user-attachments/assets/604db9bc-e4a0-4ac2-b08a-2024996c46e3)  

Ảnh 3:  
Tạo bảng " Lop " và cho MaLopHoc tự động tăng bắt đầu từ 1 và mỗi lần tăng lên 1 đơn vị.  
![Screenshot 2025-04-15 000331](https://github.com/user-attachments/assets/685ec6a3-db87-490f-a780-6bc421823b03)  

Ảnh 4:  
Tạo bảng " Mon ".  
![image](https://github.com/user-attachments/assets/e2ec103b-8798-4550-bc1e-aeae1ebf3c32)  

Ảnh 5:  
Tạo bảng " Phong " và cho MaPhongHoc tự động tăng bắt đầu từ 1 và mỗi lần tăng lên 1 đơn vị.  
![Screenshot 2025-04-15 000545](https://github.com/user-attachments/assets/0b1f4668-2087-4e45-90db-fedf5572a34c)  

Ảnh 6:  
Tạo bảng " ThoiGian ".  
![Screenshot 2025-04-15 000626](https://github.com/user-attachments/assets/665a36cc-8b37-4ce3-af62-45eeba32922f)  

Ảnh 7:  
Tạo bảng " ThoiKhoaBieu " và cho MaLich tự động tăng bắt đầu từ 1 và mỗi lần tăng lên 1 đơn vị.  
![Screenshot 2025-04-15 000825](https://github.com/user-attachments/assets/8f0d297b-77f1-4010-8b85-d77cfe9a99a4)  

Ảnh 8:  
Tạo Khoá liên kết của bảng " ThoiKhoaBieu " với các bảng khác tạo sự liên kết chặt chẽ cho CSDL.  
![Screenshot 2025-04-15 064041](https://github.com/user-attachments/assets/9fe91c65-c892-4e20-bb31-71eb8f4aea3a)  

Ảnh 9:  
Tạo xong tất cả ta thu được thành quả 1 CSDL có thể sử dụng được.  
![Screenshot 2025-04-15 064119](https://github.com/user-attachments/assets/bc29194e-4373-46c4-9621-6be40657b126)  

Ảnh 10:  
lấy dữ liệu thô trên " TMS.tnut.edu.vn " để demo.  
Bôi đen phần muốn chọn và copy chúng.  
![Screenshot 2025-04-15 064224](https://github.com/user-attachments/assets/9c4e2669-14d1-4a6f-863d-81f55f074ed3)  

Ảnh 11:
Paste chúng vào file Excel và lọc dữ liệu phù hợp với các Bảng trong CSDL.  
![Screenshot 2025-04-15 064859](https://github.com/user-attachments/assets/a866bbf6-8439-4c14-9805-dc5e65ced4ff)  
 
Ảnh 12:  
Copy dữ liệu của cột GV rồi paste vào bảng " VG ".  
![Screenshot 2025-04-15 065434](https://github.com/user-attachments/assets/0a9fd66d-cbd3-473d-948d-dffcaed4de39)  

Ảnh 13
Copy dữ liệu của cột Lop rồi paste vào bảng " Lop ".  
![Screenshot 2025-04-15 065916](https://github.com/user-attachments/assets/af90905a-4446-4b00-917d-eb80086426c4)  

Ảnh 14:  
Copy dữ liệu của cột Mã môn và Tên môn rồi paste vào bảng " Mon ".  
![Screenshot 2025-04-15 070753](https://github.com/user-attachments/assets/3b7e4f04-02ed-47fd-9824-3c9ce898aed5)  

Ảnh 15:  
Copy dữ liệu của cột Phong rồi paste vào bảng " PhongHoc ".  
![Screenshot 2025-04-15 070900](https://github.com/user-attachments/assets/421eef84-25e4-4168-ac72-748f95473413)  

Ảnh 16:  
Nhập dữ liệu cho bảng " ThoiGian ".  
![Screenshot 2025-04-15 071550](https://github.com/user-attachments/assets/854c39e7-2792-4934-af03-0568a6ac8309)  

Ảnh 17:  
Copy -> paste các cột liên quan đến bảng " ThoiKhoaBieu ".  
![Screenshot 2025-04-15 082539](https://github.com/user-attachments/assets/a849b0f1-ad77-44cd-8061-b0c013308c56)  

Ảnh 18:  
Viết 1 Functions để dùng truy vấn thông tin giảng dậy của giảng viên trong thời gian cụ thể.  
![Screenshot 2025-04-15 092742](https://github.com/user-attachments/assets/ca5daf99-b557-4345-8631-0ec15359ffe4)  

Ảnh 19:  
Chạy Functions vừa tạo ta truy vấn ra thông tin gồm 4 cột: họ tên gv, môn dạy, giờ vào lớp, giờ ra.  
trả lời câu hỏi: trong khoảng thời gian từ datetime1 tới datetime2 thì có những gv nào đang bận giảng dạy.  
![Screenshot 2025-04-15 092829](https://github.com/user-attachments/assets/075af690-9e49-4de7-a28f-7f622c80797f)  
















