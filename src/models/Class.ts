import { DataTypes } from "sequelize";
import db from "../db/connection.js";
import Assigment from "./Assigment.js";
import Enroll from "./Enroll.js";

const Class = db.define(
  "classes",
  {
    id: {
      type: DataTypes.BIGINT,
      primaryKey: true,
      autoIncrement: true,
    },
    subjectCode: {
      type: DataTypes.BIGINT,
    },
    periodId: {
      type: DataTypes.BIGINT,
    },
    facultyId: {
      type: DataTypes.BIGINT,
    },
    teacher: {
      type: DataTypes.STRING,
    },
  },
  { createdAt: false, updatedAt: false }
);

Class.hasMany(Assigment, {
  foreignKey: "classId",
  sourceKey: "id",
});
Assigment.belongsTo(Class, {
  foreignKey: "classId",
  targetKey: "id",
});

Class.hasMany(Enroll, {
  foreignKey: "classId",
  sourceKey: "id",
});
Enroll.belongsTo(Class, {
  foreignKey: "classId",
  targetKey: "id",
});

export default Class;
