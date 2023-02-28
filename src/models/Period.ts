import { DataTypes } from "sequelize";
import db from "../db/connection";

const Period = db.define("periods", {
  id: {
    type: DataTypes.BIGINT,
    primaryKey: true,
    autoIncrement: true,
  },
  name: {
    type: DataTypes.STRING,
  },
});

export default Period;
