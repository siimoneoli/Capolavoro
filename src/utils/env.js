import { config } from 'dotenv';
import { resolve } from 'path';

const envFilePath = resolve(process.cwd(), '.env');
config({ path: envFilePath });

const getEnvVar = (varName) => {
  const value = process.env[varName] ?? undefined;

  if (value === undefined) {
    throw new Error(`Environment variable ${varName} doesn't exist or is not set`);
  }

  return value;
};

export const ServerUtils = {
  ServerPort: getEnvVar('SERVER_PORT'),
};

export const DatabaseUtils = {
  DatabaseName: getEnvVar('DATABASE_NAME'),
};
