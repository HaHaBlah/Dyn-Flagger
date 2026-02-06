import { onRequest as __api_fandom_data_js_onRequest } from "C:\\Users\\asus\\OneDrive\\Desktop\\Projects\\Dyn-Flagger\\functions\\api\\fandom-data.js"
import { onRequest as __api_fandom_image_js_onRequest } from "C:\\Users\\asus\\OneDrive\\Desktop\\Projects\\Dyn-Flagger\\functions\\api\\fandom-image.js"

export const routes = [
    {
      routePath: "/api/fandom-data",
      mountPath: "/api",
      method: "",
      middlewares: [],
      modules: [__api_fandom_data_js_onRequest],
    },
  {
      routePath: "/api/fandom-image",
      mountPath: "/api",
      method: "",
      middlewares: [],
      modules: [__api_fandom_image_js_onRequest],
    },
  ]