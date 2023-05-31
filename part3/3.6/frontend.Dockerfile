FROM node:16

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm install && \
    npm run build && \
    npm install -g serve && \
    useradd -m frontenduser
USER frontenduser
CMD serve -s build -l 5000 