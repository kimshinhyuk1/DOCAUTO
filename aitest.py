import openai
import os
from dotenv import load_dotenv

# .env 파일에서 환경 변수 로드
load_dotenv('.env')

# 환경 변수에서 OpenAI API 키 불러오기
openai.api_key = os.getenv("OPENAI_API_KEY")

try:
    # ChatCompletion 모델 호출
    response = openai.ChatCompletion.create(
        model="gpt-3.5-turbo",
        messages=[
            {"role": "user", "content": "Write a Python function to calculate the factorial of a number."}
        ]
    )
    print("응답 성공:", response['choices'][0]['message']['content'].strip())

except Exception as e:
    print("오류 발생:", e)
