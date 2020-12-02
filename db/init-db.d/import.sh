#!/bin/bash

set -e

echo "Script executed from: ${PWD}"

mongoimport --db sanfrantokyo -c projects --file ./autoProjects.json --jsonArray || mongoimport --db sanfrantokyo -c projects --file autoProjects.json --jsonArray --legacy
mongoimport --db sanfrantokyo -c reminders --file ./autoReminder.json --jsonArray || mongoimport --db sanfrantokyo -c reminders --file autoReminder.json --jsonArray --legacy
mongoimport --db sanfrantokyo -c tickets --file ./autoTickets.json --jsonArray || mongoimport --db sanfrantokyo -c tickets --file autoTickets.json --jsonArray --legacy
mongoimport -d sanfrantokyo -c timecards --file ./autoTimecard.json --jsonArray || mongoimport -d sanfrantokyo -c timecards --file autoTimecard.json --jsonArray --legacy
mongoimport --db sanfrantokyo -c users --file ./autoUsers.json --jsonArray || mongoimport --db sanfrantokyo -c users --file autoUsers.json --jsonArray --legacy

