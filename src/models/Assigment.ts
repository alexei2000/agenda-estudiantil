import { DataTypes } from "sequelize";
import db from "../db/connection.js";

const Assigment = db.define(
  "assigments",
  {
    id: {
      type: DataTypes.BIGINT,
      primaryKey: true,
      autoIncrement: true,
    },
    classId: {
      type: DataTypes.BIGINT,
    },
    name: {
      type: DataTypes.STRING,
    },
    commitmentDate: {
      type: DataTypes.DATE,
    },
    modality: {
      type: DataTypes.STRING,
    },
  },
  { createdAt: false, updatedAt: false }
);

export default Assigment;
