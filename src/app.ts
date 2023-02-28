import router from "./routes";
import app from "./config";
import db from "./db/connection";

const dbConnect = async () => {
  try {
    await db.sync({ force: false });
    await db.authenticate();
    console.log("Connection has been established successfully.");
  } catch (error) {
    console.error("Unable to connect to the database:", error);
  }
};

dbConnect();

app.use("/", router);

export default app;
