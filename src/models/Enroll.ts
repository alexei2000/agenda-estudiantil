import { DataTypes } from "sequelize";
import db from "../db/connection";

const Enroll = db.define("enrolls", {
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
});

export default Enroll;
