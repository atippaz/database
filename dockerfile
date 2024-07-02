# ใช้ Base Image ของ SQL Server
FROM mcr.microsoft.com/mssql/server:2019-latest

# กำหนดข้อมูลผู้ใช้ Administrator (sa) และยอมรับข้อตกลงการใช้งาน (EULA)
ENV SA_PASSWORD=YourStrong!Password
ENV ACCEPT_EULA=Y

# คัดลอกไฟล์ backup.sql เข้าไปใน Docker container
COPY backup.sql /tmp/backup.sql

# ตั้งค่าการรัน backup.sql เมื่อ Docker container ถูกสร้างขึ้น
EXPOSE 1433