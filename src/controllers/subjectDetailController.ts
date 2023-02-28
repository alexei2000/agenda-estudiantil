import { Request, Response } from "express";
import Subject from "../models/Subject";

export const getSubjectDetail = async (_: Request, res: Response) => {
  // res.render("subjectDetail");
  const subjects = await Subject.findAll();
  res.json(subjects);
};
