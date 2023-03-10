import express from "express";
import path from "path";
import { fileURLToPath } from "url";

const PORT = process.env.PORT || 3000;
const app = express();

const __filename = fileURLToPath(import.meta.url);

const __dirname = path.dirname(__filename);
app.use(express.static(path.join(__dirname, "public")));

app.set("port", process.env.PORT || PORT);
app.set("views", path.join(__dirname, "views"));
app.set("view engine", "ejs");
app.use(express.json());

export default app;
