#!/bin/sh

# Check if it has root permission
if [[ "$UID" -ne "$ROOT_UID" ]] ; then
        printf "죄송합니다! 관리자 권한으로 실행하여 주세요. 화면에 \"sudo 05_simulator.sh\" 이라고 입력합니다.\n"
        exit 1
fi

printf "가상의 데이터를 송신하는 앱을 실행합니다. IoTHub을 체크하고 비어 있으면 데이터를 송신합니다.\n"
printf "엔터를 누르면 콘솔 앱이 종료됩니다. 언제든지 다시 실행할 수 있습니다.(01 ~ 03번은 더이상 실행 할 필요가 없습니다.)\n"
printf "창의 맨 위 왼쪽 버튼 -> 이동 버튼을 눌러 창을 오른쪽으로 붙여 주세요.\n"
mvn exec:java -Dexec.mainClass="com.mycompany.app.App" -f ./simulated-device
