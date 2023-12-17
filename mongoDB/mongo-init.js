db = db.getSiblingDB('database1');

db.createCollection('collection1');

db.createUser(
  {
  user: 'admin',
  pwd: 'admin1',
  roles: [
      {
        role: "readWrite",
        db: "mydatabase",
      }
    ]
  }
);
