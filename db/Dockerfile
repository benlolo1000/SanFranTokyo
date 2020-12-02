#creating our image for database
FROM mongo:4

# copies seed data and seed user into startup-script area
COPY ./init-db.d/import.sh /docker-entrypoint-initdb.d
COPY ./init-db.d/user-init.js /docker-entrypoint-initdb.d

# copies seed data into root folder
COPY ./init-db.d/autoProjects.json .
COPY ./init-db.d/autoReminder.json .
COPY ./init-db.d/autoTickets.json .
COPY ./init-db.d/autoTimecard.json .
COPY ./init-db.d/autoUsers.json .

EXPOSE 27017