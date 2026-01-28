import { onRequest as __api_module__name__js_onRequest } from "C:\\Users\\asus\\OneDrive\\Desktop\\Projects\\Dyn-Flagger\\functions\\api\\module\\[name].js"

export const routes = [
    {
      routePath: "/api/module/:name",
      mountPath: "/api/module",
      method: "",
      middlewares: [],
      modules: [__api_module__name__js_onRequest],
    },
  ]