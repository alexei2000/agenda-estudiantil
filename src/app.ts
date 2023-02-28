import router from "./routes.js";
import app from "./config.js";
import db from "./db/connection.js";

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
