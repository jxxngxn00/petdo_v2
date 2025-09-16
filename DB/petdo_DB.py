import os
import psycopg2

# ===== DB 설정 =====
DB_NAME = "postgres"
DB_USER = "petdo"
DB_PASSWORD = "petdo"
DB_HOST = "localhost"
DB_PORT = "5432"

# ===== 이미지 폴더 (product-details) =====
DETAIL_IMAGE_FOLDER = r"C:\internship\product-details"

if not os.path.exists(DETAIL_IMAGE_FOLDER):
    raise FileNotFoundError(f"이미지 폴더를 찾을 수 없습니다: {DETAIL_IMAGE_FOLDER}")
    exit()

# ===== PostgreSQL 연결 =====
conn = psycopg2.connect(
    dbname=DB_NAME,
    user=DB_USER,
    password=DB_PASSWORD,
    host=DB_HOST,
    port=DB_PORT
)
cur = conn.cursor()

updated_rows = 0
# ===== 이미지별 UPDATE =====
for img_file in os.listdir(DETAIL_IMAGE_FOLDER):
    if img_file.lower().endswith(('.png', '.jpg', '.jpeg', '.gif')):
        # stored_file_name = img_file 와 같은 행을 찾아서
        # stored_main_file_name = img_file 로 업데이트
        cur.execute("""
            UPDATE product
            SET stored_main_file_name = %s
            WHERE stored_file_name LIKE %s
        """, (img_file, f"%{img_file}%"))
        print(f"{updated_rows} :: {img_file} 업데이트")
        updated_rows += 1

# ===== 커밋 및 종료 =====
conn.commit()
cur.close()
conn.close()

print("모든 상세 이미지 파일이 DB에 반영되었습니다!")
print(f"업데이트된 행 수: {updated_rows}")
