FROM ubuntu:latest
EXPOSE 8000
WORKDIR /app
ENV HOST=localhost
ENV DBPORT=5432
ENV DB_USER=root
ENV PASSWORD=root
ENV DBNAME=root
COPY ./main main
COPY templates/ /app/templates/
RUN chmod +x main
CMD [ "./main" ]
