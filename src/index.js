import express from 'express';
import cors from 'cors';
import { fileURLToPath } from 'url';
import { join, dirname } from 'path';
import { ServerUtils } from './utils/env.js';
import { executeQuery } from './connections/database.js';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const app = express().use(cors());

app.get('/', (req, res) => {
  app.use(express.static(join(__dirname, '..', 'public/assets')));
  res.sendFile(join(__dirname, '..', 'public', 'index.html'));
});

app.get('/getSchedulesData', async (req, res) => {
  const result = await executeQuery('SELECT schedule_name, schedule_desc, schedule_img FROM school_schedules');
  res.json(result);
});

app.get('/getSubjects', async (req, res) => {
  const result = await executeQuery(`SELECT subject_id, subject_name FROM school_subjects WHERE schedule_ids LIKE '%${req.query.id}%'`);
  res.json(result);
});

app.get('/getQAndA', async (req, res) => {
  const subjectIDs = req.query.subjectID;
  const allResults = [];

  for (const subjectID of subjectIDs) {
    const result = await executeQuery(`SELECT question, answer FROM subject_qnas WHERE schedule_ids LIKE '%${req.query.scheduleID}%' AND subject_id = ${subjectID} ORDER BY RAND() LIMIT ${req.query.questionNum}`);
    allResults.push(result);
  }

  res.json(allResults);
});

app.listen(ServerUtils.ServerPort, () => {
  console.log(`Server running on port: ${ServerUtils.ServerPort}`);
});
