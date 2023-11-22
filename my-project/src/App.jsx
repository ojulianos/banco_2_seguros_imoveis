import { createBrowserRouter, RouterProvider } from "react-router-dom";

import RootLayout from "./layouts/RootLayout";
import Dashboard from "./routes/dashboard";
import Imoveis from "./routes/Imoveis";

const router = createBrowserRouter([
  {
    path: "/",
    element: <RootLayout />,
    children: [
      {
        path: "/",
        element: <Dashboard />,
      },
      {
        path: "/imoveis",
        element: <Imoveis />,
      },
    ],
  },
]);

function App() {

  return (
      <RouterProvider router={router} />
  );
}

export default App