import { Request, Response } from "express";
import { Op } from "sequelize";
import Assigment from "../models/Assigment.js";
import Class from "../models/Class.js";
import Subject from "../models/Subject.js";

export const getAssigmentsSummary = async (_: Request, res: Response) => {
  const assigments = await Assigment.findAll({
    where: { commitmentDate: { [Op.gt]: new Date().toString() } },
    include: { model: Class, include: [Subject] },
  });
  res.json(assigments);
};
