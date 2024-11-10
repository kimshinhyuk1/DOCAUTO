# Makefile 예시: Git 명령어 자동화

# 모든 변경사항을 커밋하고 푸시하는 타깃
commit:
	git add .
	git commit -m "auto message"
	git push

# 특정 메시지를 입력할 수 있는 커밋 및 푸시 타깃
commit-msg:
	@read -p "Enter commit message: " msg; \
	git add .; \
	git commit -m "$$msg"; \
	git push

# 새 브랜치 생성 후 체크아웃
branch:
	@read -p "Enter branch name: " branch; \
	git checkout -b "$$branch"

# 변경 사항을 원격 저장소에서 가져오기 (fetch + merge)
pull:
	git pull

# 원격 저장소에 푸시하기
push:
	git push
