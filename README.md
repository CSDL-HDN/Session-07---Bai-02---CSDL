Cơ chế của NOT IN: SQL thường phải quét (scan) toàn bộ danh sách kết quả trong subquery, nạp vào bộ nhớ (hoặc file tạm), sau đó mới so sánh với từng dòng của bảng chính. Nếu bảng Payments có hàng triệu dòng, đây là một thảm họa về bộ nhớ. Ngoài ra, NOT IN sẽ trả về kết quả rỗng nếu trong danh sách có bất kỳ giá trị NULL nào.

Cơ chế Short-circuit (Dừng sớm) của EXISTS: * EXISTS không quan tâm trong subquery có bao nhiêu dòng. Nó chỉ quan tâm: "Có ít nhất một dòng thỏa mãn hay không?"

Ngay khi máy ảo SQL tìm thấy dòng đầu tiên khớp với điều kiện trong bảng Payments, nó sẽ dừng quét ngay lập tức (short-circuit) và trả về kết quả.

Với NOT EXISTS, ngay khi tìm thấy một bản ghi thanh toán, nó biết ngay học viên này "không hợp lệ" để lấy ra và bỏ qua luôn, không cần kiểm tra các hóa đơn khác của người đó nữa.
