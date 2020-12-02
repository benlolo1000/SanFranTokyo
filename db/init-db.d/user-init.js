db.createUser({
user: 'mongouser',
pwd: 'iamamongouser',
roles: [{ role: 'readWrite', db: 'sanfrantokyo' }],
mechanisms: ['SCRAM-SHA-1']
});