import { Request, Response } from "express";
import Subject from "../models/Subject.js";

export const getSubjectDetail = async (_: Request, res: Response) => {
  const subjects = await Subject.findAll();
  res.render("subjectDetail");
  res.json(subjects);
};
