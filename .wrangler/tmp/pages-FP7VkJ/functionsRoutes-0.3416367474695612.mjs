import { onRequest as __api_fandom_data_js_onRequest } from "C:\\Users\\asus\\OneDrive\\Desktop\\Projects\\Dyn-Flagger\\functions\\api\\fandom-data.js"

export const routes = [
    {
      routePath: "/api/fandom-data",
      mountPath: "/api",
      method: "",
      middlewares: [],
      modules: [__api_fandom_data_js_onRequest],
    },
  ]