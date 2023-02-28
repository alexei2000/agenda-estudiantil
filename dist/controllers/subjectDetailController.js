import Subject from "../models/Subject";
export const getSubjectDetail = async (_, res) => {
    // res.render("subjectDetail");
    const subjects = await Subject.findAll();
    res.json(subjects);
};
