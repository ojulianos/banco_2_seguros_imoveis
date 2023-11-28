import { createBrowserRouter, RouterProvider } from "react-router-dom";

import RootLayout from "./layouts/RootLayout";
import Clientes from "./routes/Clientes";
import Imoveis from "./routes/Imoveis";

const router = createBrowserRouter([
  {
    path: "/",
    element: <RootLayout />,
    children: [
      {
        path: "/Clientes",
        element: <Clientes />,
      },
      {
        path: "/imoveis",
        element: <Imoveis />,
      },
    ],
  },
]);

function App() {
  return <RouterProvider router={router} />;
}

export default App;
