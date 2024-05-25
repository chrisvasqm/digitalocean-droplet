import 'dotenv/config'
import express from 'express';
import cors from 'cors';
import helmet from 'helmet';

const app = express();

app.use(express.json());

app.use(cors());
app.use(helmet());

app.use('/', (_, res) => res.send('Hello Droplet'));

const port = process.env.PORT || 3030;
app.listen(port, () => console.log(`Server listening on http://localhost:${port}`));