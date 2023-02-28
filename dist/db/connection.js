import { Sequelize } from "sequelize";
const db = new Sequelize("agenda_db", "root", "", {
    host: "localhost",
    dialect: "mysql",
});
export default db;
