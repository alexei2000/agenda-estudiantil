import { DataTypes } from "sequelize";
import db from "../db/connection.js";
import Class from "./Class.js";

const Period = db.define(
  "periods",
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

Period.hasMany(Class, {
  foreignKey: "periodId",
  sourceKey: "id",
});
Class.belongsTo(Period, {
  foreignKey: "periodId",
  targetKey: "id",
});

export default Period;
