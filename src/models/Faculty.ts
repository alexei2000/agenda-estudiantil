import { DataTypes } from "sequelize";
import db from "../db/connection.js";
import Class from "./Class.js";

const Faculty = db.define(
  "faculties",
  {
    id: {
      type: DataTypes.BIGINT,
      primaryKey: true,
      autoIncrement: true,
    },
    name: {
      type: DataTypes.STRING,
    },
  },
  { createdAt: false, updatedAt: false }
);

Faculty.hasMany(Class, {
  foreignKey: "facultyId",
  sourceKey: "id",
});
Class.belongsTo(Faculty, {
  foreignKey: "facultyId",
  targetKey: "id",
});

export default Faculty;
