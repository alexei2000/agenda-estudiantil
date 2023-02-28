import { DataTypes } from "sequelize";
import db from "../db/connection";
const Subject = db.define("subjects", {
    code: {
        type: DataTypes.BIGINT,
        primaryKey: true,
        autoIncrement: true,
    },
    level: {
        type: DataTypes.INTEGER,
    },
    name: {
        type: DataTypes.STRING,
    },
    uc: {
        type: DataTypes.INTEGER,
    },
}, { createdAt: false, updatedAt: false });
export default Subject;
