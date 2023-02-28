import { DataTypes } from "sequelize";
import db from "../db/connection";

const Class = db.define("classes", {
  id: {
    type: DataTypes.BIGINT,
    primaryKey: true,
    autoIncrement: true,
  },
  subjectCode: {
    type: DataTypes.STRING,
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
});

export default Class;
