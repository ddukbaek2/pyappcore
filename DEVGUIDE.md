# pyappcore

## 개요

파이썬 기반의 앱 프레임워크 패키지.


## 개발 환경 및 사용 환경

    OS: Windows 11 Pro  
    Python: 3.12.4 (64-Bit)   
    IDE: Visual Studio Code   


## 사용한 외부 패키지

    setuptools   
    wheel   
    twine   
    debugpy  
    python-dotenv   


## 패키지 설치시 필요한 의존성 패키지

    pyinstaller
    debugpy


## pyappcore 패키지 스펙

    Python 3.12.4를 사용.   
    외부 라이브러리는 setuptools, wheel, twine, debugpy, pyinstaller 패키지를 사용.   
    그 외는 기본 내장 라이브러리만을 사용.
    패키지 작업 환경이 Windows11 + VSCode라서 다른 환경에서는 이슈가 있을 수 있음.   
    일단 파이썬 3.9 이상이면 무리없이 동작하리라 예상.   
    사용하려면 일단 가상환경 설정을 해주어야 함.
   

## 프로젝트 가상환경 생성 방법
1. 가상환경 만들기 플러그인 설치
2. VSCode에서 Control + Shift + P 를 눌러 Python: 환경 만들기 실행
3. Venv 선택
4. 인터프리터는 Python 3.12.4 64-bit 선택
5. 설치할 종속성 선택


## 프로젝트 배치파일 목록
- run-venv.bat : 가상환경 설치 (개발중단).
- run-activate.bat : 가상환경 활성화.
- run-deactivate.bat : 가상환경 비활성화.
- run-test.bat : 유닛테스트.
- run-pip.bat : 패키지 최신 업데이트.
- run-clean.bat : 기존 빌드파일 제거.
- run-build.bat : wheel 빌드.
- run-distribution.bat : PyPi 배포.


## VSCode 기반 설치 플러그인 목록
### 공통
- Korean Language Pack for Visual Studio Code
- PowerShell

### 파이썬
- Python
- Python Debugger
- Python Environment Manager
- Python Image Preview
- Pylance

### 블렌더
- Blender Development
- Blender Python Code Templates

### 맥스
- Language MaxScript
- MaxScript

### QT
- PYQT Integration

## 참고 사항

run-activate 로 가상환경을 활성화.
기능 개발.
run-distribution 으로 패키지를 릴리즈.   

폴더를 옮길 때마다 가상환경을 새로 생성 및 활성화.   

(기존코드의 가상환경은 기존코드 경로에 맞추어져 있기 때문.)   

.venv는 패키지 인스톨 시에 --user 플래그를 사용할 수 없음.   

## 설치방법

    pip install pyappcore   
    makeproject New Project   

## 사용방법
1. 매 빌드될 때 마다 __prebuild__.py를 실행.
2. 실제 IDE는 __launcher__.py을 실행시키고 main의 Main()에 통지.

## 조건


## 실행시 자동으로 생성되는 파일

    __pyappcore_dependencies_in_build__   
    __pyappcore_symbols_in_build__   
