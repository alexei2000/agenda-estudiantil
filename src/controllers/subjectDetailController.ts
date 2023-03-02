import { Request, Response } from "express";
import Period from "../models/Period.js";
import Class from "../models/Class.js";
import Enroll from "../models/Enroll.js";
import Subject from "../models/Subject.js";

export const getSubjectDetail = async (req: Request, res: Response) => {
  const subjects = await Subject.findByPk(req.params.id);
  const classes = await Class.findAll({
    where: { subjectCode: req.params.id },
    include: [Period, { model: Enroll, where: { studentId: 1 } }],
  });
  // const classes = await Class.findAll({where:{

  // }})
  res.json({ subjects, classes });
};
