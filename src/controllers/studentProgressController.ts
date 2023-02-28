import { Request, Response } from "express";

export const getStudentProgress = (_: Request, res: Response) => {
  res.render("studentProgress");
};
