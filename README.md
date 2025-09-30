# SQL Server Auto Apply Workflow

이 레포지토리는 **GitHub Actions**를 활용하여 `main` 브랜치에 변경된 SQL 파일이 push될 경우,  
자동으로 SQL Server에 해당 스크립트를 실행하는 파이프라인을 제공합니다.

## 동작 방식
1. `main` 브랜치에 push 발생
2. GitHub Actions 워크플로우 실행
3. 최근 커밋에서 변경된 `*.sql` 파일 추적
4. SQL Server에 순차적으로 적용

## Secrets 설정
아래 값들은 GitHub 레포지토리 → **Settings → Secrets and variables → Actions** 에 등록해야 합니다.

| Secret Name    | 설명                      | 예시               |
|----------------|---------------------------|--------------------|
| SQL_SERVER     | SQL Server 주소(IP,Port)  | 127.0.0.1,1433    |
| SQL_DB         | 데이터베이스명            | MyDatabase         |
| SQL_USER       | 로그인 사용자             | sa                 |
| SQL_PASSWORD   | 로그인 비밀번호           | ********           |

## Workflow 설명
워크플로우 파일 경로: `.github/workflows/run-changed-sql.yml`

- **Checkout**: 레포지토리 코드 가져오기  
- **Install SqlServer**: PowerShell SqlServer 모듈 설치  
- **Get changed SQL files**: 변경된 SQL 파일 추적  
- **Run changed SQL files**: Invoke-Sqlcmd로 SQL Server에 적용  

## 사용 방법
1. SQL 파일을 추가/수정
2. 변경 사항을 `main` 브랜치에 push
3. GitHub Actions → 실행 로그 확인
4. SQL Server에 적용 결과 확인
