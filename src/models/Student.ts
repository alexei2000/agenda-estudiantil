import { DataTypes } from "sequelize";
import db from "../db/connection.js";
import Enroll from "./Enroll.js";

const Student = db.define("students", {
  id: {
    type: DataTypes.BIGINT,
    primaryKey: true,
    autoIncrement: true,
  },
  email: {
    type: DataTypes.STRING,
  },
  name: {
    type: DataTypes.STRING,
  },
  lastName: {
    type: DataTypes.STRING,
  },
  password: {
    type: DataTypes.STRING,
  },
});

Student.hasMany(Enroll, {
  foreignKey: "studentId",
  sourceKey: "id",
});
Enroll.belongsTo(Student, {
  foreignKey: "studentId",
  targetKey: "id",
});

export default Student;
