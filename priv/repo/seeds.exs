# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Pocky.Repo.insert!(%Pocky.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Pocky.Repo

Repo.insert!(%Pocky.Feeds.Product{
  title: "คอนโดจามจุรีสแควร์ เรสซิเดนท์ ติดรั้วจุฬา ( เจ้าของขายเอง )",
  price: 4_200_000,
  body: """
  รายละเอียดสินค้า

  ขาย คอนโดจามจุรีสแควร์ เรสซิเดนท์ ติดรั้วจุฬา ( เจ้าของขายเอง )
  ชั้น 8 ฝั่ง ม.จุฬา ขาดห้อง 43 ตรม. 1 ห้องนอน 1 ห้องน้ำ เพิ่งรีโนเวท บิ้วท์อิน เมื่อตอนต้นปีที่แล้ว
  ประตูห้อง ติด digital door lock แล้ว ตกแต่งครบ พร้อมเข้าอยู่
  สภาพใหม่ ใจกลางเมือง ชั้นใต้ดิน ลิ้งค์กับ MRT . สามย่าน
  สิ่งอำนวยความสะดวก
  – Club House ที่ชั้น 5
  – Lobby ขนาดใหญ่ที่ชั้น 5
  – Lobby เข้าออกสองทางที่ชั้น G
  – ห้องออกกำลังกายขนาดใหญ่
  – สระว่ายน้ำขนาดใหญ่
  – สระพักผ่อนขนาดเล็ก
  – Pool Deck , Pool Sofa และ Day Bed
  – ห้องประชุมขนาดใหญ่
  – ห้องพักผ่อน Indoor & Outdoor
  – ห้อง Aerobic
  – ห้อง Internet
  – ห้อง Sauna
  – อ่าง Jacuzzi ในห้องน้ำ Club House
  – ลิฟท์โดยสาร 4 ตัว, Service Lift 1 ตัว
  – สวนที่ชั้น G และชั้น 5
  – ที่จอดรถ 120% Exclusive ที่ชั้น P7 สามารถเดินเข้าตัวอาคารทางสวน ชั้น 5 ได้สดวกสบาย
  – ระบบ CCTV / Access Card
  สถานที่สำคัญใกล้เคียง
  - จุฬาลงกรณ์มหาวิทยาลัย
  - วัดหัวลำโพง
  - ศูนย์การค้า จามจุรี สแควร์ ( ตึกเดียวกัน )
  -สามย่านมิตรทาวน์
  - โรงเรียนเตรียมอุดมศึกษา
  - ห้างสรรพสินค้า มาบุญครอง / สยามสแควร์ / สยามเซ็นเตอร์ / สยามพารากอน / สยามดิสคอฟเวอรี
  """
})
