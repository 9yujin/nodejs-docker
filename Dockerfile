#베이스 이미지를 명시해준다.
FROM node:10

COPY ./ ./

# 추가적으로 필요한 파일들을 다운로드 받는다. npm을 이용해서 pacakage.json에 있는 파일을 자동으로 받아옴.
RUN npm install

# 컨테이너 시작 시 실행될 명령어를 명시해준다.
CMD ["node", "server.js"]
