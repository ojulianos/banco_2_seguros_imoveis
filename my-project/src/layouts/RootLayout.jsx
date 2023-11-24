import React from "react";
import { NavLink, Outlet } from "react-router-dom";

const RootLayout = () => {
  return (
    <>
      <div className="antialiased bg-white ">
        <nav className="bg-white border-b border-gray-200 px-4 py-2.5 dark:bg-gray-800 dark:border-gray-700 fixed left-0 right-0 top-0 z-50">
          <div className="flex flex-wrap justify-between items-center">
            <div className="flex justify-start items-center">
              <button>
                <span className="sr-only">Toggle sidebar</span>
              </button>
              <a href="/" className="flex items-center justify-between mr-4">
                <img
                  src="https://flowbite.s3.amazonaws.com/logo.svg"
                  className="mr-3 h-8"
                  alt="Flowbite Logo"
                />
                <span className="self-center text-2xl font-semibold whitespace-nowrap dark:text-white">
                  Seguradoralider
                </span>
              </a>
            </div>
            <div className="flex items-center lg:order-2">
              <button></button>

              <button></button>

              <div
                className="hidden z-50 my-4 w-56 text-base list-none bg-white rounded divide-y divide-gray-100 shadow dark:bg-gray-700 dark:divide-gray-600 rounded-xl"
                id="dropdown"
              ></div>
            </div>
          </div>
        </nav>

        <aside
          className="fixed top-0 left-0 z-40 w-64 h-screen pt-14 transition-transform -translate-x-full bg-white border-r border-gray-200 md:translate-x-0 dark:bg-gray-800 dark:border-gray-700"
          aria-label="Sidenav"
          id="drawer-navigation"
        >
          <div className="overflow-y-auto py-5 px-3 h-full bg-white dark:bg-gray-800">
            <ul className="space-y-2">
              <li>
                <NavLink
                  to="/"
                  className="flex items-center p-2 text-base font-medium text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
                >
                  <span className="ml-3">Clientes</span>
                </NavLink>
              </li>
              <li>
                <NavLink
                  to="/imoveis"
                  className="flex items-center p-2 text-base font-medium text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
                >
                  <span className="ml-3">Imóveis</span>
                </NavLink>
              </li>
              <li>
                <a
                  href="#"
                  className="flex items-center p-2 text-base font-medium text-gray-900 rounded-lg transition duration-75 hover:bg-gray-100 dark:hover:bg-gray-700 dark:text-white group"
                >
                  <span className="ml-3">Apólice</span>
                </a>
              </li>
              <li>
                <a
                  href="#"
                  className="flex items-center p-2 text-base font-medium text-gray-900 rounded-lg transition duration-75 hover:bg-gray-100 dark:hover:bg-gray-700 dark:text-white group"
                >
                  <span className="ml-3">Help</span>
                </a>
              </li>
            </ul>
          </div>
        </aside>

        <main className="p-4 md:ml-64 h-auto pt-20">
          <Outlet />
        </main>
      </div>
    </>
  );
};

export default RootLayout;
