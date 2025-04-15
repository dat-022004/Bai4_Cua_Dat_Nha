CREATE FUNCTION dbo.fn_KiemTraGiangVienBantheothoigian
(
    @datetime1 DATETIME,
    @datetime2 DATETIME
)
RETURNS TABLE
AS
RETURN
(
    SELECT
        GV.TenGV AS HoTenGV,  -- Lấy tên giáo viên
        Mon.TenMonHoc AS MonDay,  -- Lấy tên môn học

        -- Tính Giờ vào lớp và định dạng hiển thị đến giây
        FORMAT(DATEADD(
            MINUTE,
            (TKB.TietBD - 1) * 85,
            CAST(TKB.Ngay AS DATETIME) + CAST('06:30:00' AS DATETIME)
        ), 'yyyy-MM-dd HH:mm') AS GioVao,

        -- Tính Giờ ra lớp và định dạng hiển thị đến giây
        FORMAT(DATEADD(
            MINUTE,
            ((TKB.SoTiet * 75) + ((TKB.SoTiet - 1) * 10)) + ((TKB.TietBD - 1) * 85),
            CAST(TKB.Ngay AS DATETIME) + CAST('06:30:00' AS DATETIME)
        ), 'yyyy-MM-dd HH:mm') AS GioRa

    FROM
        ThoiKhoaBieu TKB
    JOIN
        GV ON TKB.MaGV = GV.MaGV
    JOIN
        Mon ON TKB.MaMonHoc = Mon.MaMonHoc

    WHERE
        -- Kiểm tra các tiết học nằm trong khoảng thời gian cần kiểm tra
        (
            -- Thời gian bắt đầu lớp nằm trong khoảng
            DATEADD(MINUTE, (TKB.TietBD - 1) * 85, CAST(TKB.Ngay AS DATETIME) + CAST('06:30' AS DATETIME)) BETWEEN @datetime1 AND @datetime2
            OR
            -- Thời gian kết thúc lớp nằm trong khoảng
            DATEADD(MINUTE, ((TKB.SoTiet * 75) + ((TKB.SoTiet - 1) * 10)) + ((TKB.TietBD - 1) * 85), CAST(TKB.Ngay AS DATETIME) + CAST('06:30' AS DATETIME)) BETWEEN @datetime1 AND @datetime2
            OR
            -- Lớp bao trùm cả khoảng thời gian kiểm tra
            (
                DATEADD(MINUTE, (TKB.TietBD - 1) * 85, CAST(TKB.Ngay AS DATETIME) + CAST('06:30' AS DATETIME)) < @datetime1
                AND
                DATEADD(MINUTE, ((TKB.SoTiet * 75) + ((TKB.SoTiet - 1) * 10)) + ((TKB.TietBD - 1) * 85), CAST(TKB.Ngay AS DATETIME) + CAST('06:30' AS DATETIME)) > @datetime2
            )
        )
);
