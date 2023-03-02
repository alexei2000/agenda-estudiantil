import { Sequelize } from "sequelize";

const db = new Sequelize(
  "agenda_db",
  process.env.DB_USER ?? "",
  process.env.DB_PASSWORD ?? "",
  {
    host: process.env.DB_HOST,
    dialect: "mysql",
  }
);

export default db;
