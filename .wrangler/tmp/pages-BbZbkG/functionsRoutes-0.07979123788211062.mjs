import { onRequest as __api_fandom_data_js_onRequest } from "C:\\Users\\asus\\OneDrive\\Desktop\\Projects\\Dyn-Flagger\\functions\\api\\fandom-data.js"
import { onRequest as __api_fandom_image_js_onRequest } from "C:\\Users\\asus\\OneDrive\\Desktop\\Projects\\Dyn-Flagger\\functions\\api\\fandom-image.js"
import { onRequest as __api_fandom_image_proxy_js_onRequest } from "C:\\Users\\asus\\OneDrive\\Desktop\\Projects\\Dyn-Flagger\\functions\\api\\fandom-image-proxy.js"
import { onRequest as __api_fandom_module_js_onRequest } from "C:\\Users\\asus\\OneDrive\\Desktop\\Projects\\Dyn-Flagger\\functions\\api\\fandom-module.js"
import { onRequest as __api_roblox_thumbnail_js_onRequest } from "C:\\Users\\asus\\OneDrive\\Desktop\\Projects\\Dyn-Flagger\\functions\\api\\roblox-thumbnail.js"

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
  {
      routePath: "/api/fandom-image-proxy",
      mountPath: "/api",
      method: "",
      middlewares: [],
      modules: [__api_fandom_image_proxy_js_onRequest],
    },
  {
      routePath: "/api/fandom-module",
      mountPath: "/api",
      method: "",
      middlewares: [],
      modules: [__api_fandom_module_js_onRequest],
    },
  {
      routePath: "/api/roblox-thumbnail",
      mountPath: "/api",
      method: "",
      middlewares: [],
      modules: [__api_roblox_thumbnail_js_onRequest],
    },
  ]