import { DataTypes } from "sequelize";
import db from "../db/connection.js";
import Class from "./Class.js";

const Subject = db.define(
  "subjects",
  {
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
  },
  { createdAt: false, updatedAt: false }
);

Subject.hasMany(Class, {
  foreignKey: "subjectCode",
  sourceKey: "code",
});
Class.belongsTo(Subject, {
  foreignKey: "subjectCode",
  targetKey: "code",
});

export default Subject;
