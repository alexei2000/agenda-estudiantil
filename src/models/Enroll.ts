import { DataTypes } from "sequelize";
import db from "../db/connection.js";

const Enroll = db.define(
  "enrolls",
  {
    id: {
      type: DataTypes.BIGINT,
      primaryKey: true,
      autoIncrement: true,
    },
    classId: {
      type: DataTypes.BIGINT,
    },
    studentId: {
      type: DataTypes.BIGINT,
    },
    grade: {
      type: DataTypes.INTEGER,
    },
  },
  { createdAt: false, updatedAt: false }
);

export default Enroll;
