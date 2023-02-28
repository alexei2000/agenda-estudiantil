import express from "express";
import { getAssigmentsSummary } from "./controllers/assigmentsSummaryController";
import { getStudentProgress } from "./controllers/studentProgressController";
import { getSubjectDetail } from "./controllers/subjectDetailController";
const router = express.Router();
router.get("/summary", getAssigmentsSummary);
router.get("/progress", getStudentProgress);
router.get("/subject", getSubjectDetail);
export default router;
