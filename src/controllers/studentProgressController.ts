import { Request, Response } from "express";
import Class from "../models/Class.js";
import Subject from "../models/Subject.js";
import Faculty from "../models/Faculty.js";
import Period from "../models/Period.js";
import Enroll from "../models/Enroll.js";

export const getStudentProgress = async (_: Request, res: Response) => {
  const subjects = await Subject.findAll({
    include: {
      model: Class,
      include: [
        { model: Faculty, attributes: ["name"] },
        { model: Period, attributes: ["name"] },
        { model: Enroll, attributes: ["grade"] },
      ],
    },
  });
  subjects;

  res.json(subjects);
};
