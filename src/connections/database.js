import { createConnection } from 'mysql';
import { DatabaseUtils } from '../utils/env.js';

const connection = createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: DatabaseUtils.DatabaseName,
});

connection.connect((err) => {
  if (err) {
    throw new Error('MySQL database connection failed', err);
  }

  console.log('MySQL database connection established');
});

export const executeQuery = (query) => {
  return new Promise((resolve, reject) => {
    connection.query(query, (err, res) => {
      if (err) {
        reject(new Error('Executing query failed', err));
      }

      resolve(res);
    });
  });
};
