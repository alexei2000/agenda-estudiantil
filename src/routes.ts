import express from "express";
import { getAssigmentsSummary } from "./controllers/assigmentsSummaryController.js";
import { getStudentProgress } from "./controllers/studentProgressController.js";
import { getSubjectDetail } from "./controllers/subjectDetailController.js";

const router = express.Router();

router.get("/summary", getAssigmentsSummary);
router.get("/progress", getStudentProgress);
router.get("/subject/:id", getSubjectDetail);

export default router;
