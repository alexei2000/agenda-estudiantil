import { Request, Response } from "express";

export const getAssigmentsSummary = (_: Request, res: Response) => {
  res.render("assigmentsSummary");
};
