FROM node:16

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm install

RUN npm run build

RUN npm install -g serve

RUN useradd -m frontenduser
USER frontenduser
CMD serve -s build -l 5000 