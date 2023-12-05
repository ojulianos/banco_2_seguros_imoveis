import { createBrowserRouter, RouterProvider, } from "react-router-dom";

import RootLayout from "./layouts/RootLayout";
import Clientes from "./routes/Clientes";
import Imoveis from "./routes/Imoveis";
import ImoveisCreateForm from "./routes/ImoveisCreateForm";
import ClienteCreateForm from "./routes/clienteCreateForm";

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
      {
        path: "/clienteCreate",
        element: <ClienteCreateForm />,
      },
      {
        path: "/imovelCreate",
        element: <ImoveisCreateForm />,
      },
      {
        path: "/clienteEdit/:id",
        element: <ClienteCreateForm />,
      },
      {
        path: "/imovelEdit/:id",
        element: <ImoveisCreateForm />,
      },
    ],
  },
]);

function App() {
  return <RouterProvider router={router} />;
}

export default App;
