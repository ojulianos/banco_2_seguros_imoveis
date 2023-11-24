import React from "react";

const Dashboard = () => {
  return (
    <>
      <div className="relative overflow-x-auto mt-8 shadow-md sm:rounded-lg mx-auto">
        <table className="w-full text-sm text-left rtl:text-right text-white dark:text-white">
          <thead className="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-white">
            <tr>
              <th scope="col" className="px-6 py-3">
                Endereço
              </th>
              <th scope="col" className="px-6 py-3">
                Cliente
              </th>
              <th scope="col" className="px-6 py-3">
                Data Fim
              </th>
              <th scope="col" className="px-6 py-3">
                Valor Cobertura
              </th>
              <th scope="col" className="px-6 py-3">
                Valor Franquia
              </th>
              <th scope="col" className="px-6 py-3">
                Qtd Sinistro
              </th>
              <th scope="col" className="px-6 py-3">
                <span className="sr-only">Ações</span>
              </th>
            </tr>
          </thead>
          <tbody>
            <tr className="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
              <td className="px-6 py-4">Endereço Exemplo</td>
              <td className="px-6 py-4">Cliente Exemplo</td>
              <td className="px-6 py-4">01/01/2023</td>
              <td className="px-6 py-4">$100,000</td>
              <td className="px-6 py-4">$1,000</td>
              <td className="px-6 py-4">3</td>
              <td className="px-6 py-4 text-right">
                <a
                  href="#"
                  className="font-medium text-blue-600 dark:text-blue-500 hover:underline"
                >
                  Editar
                </a>
                &nbsp;
                <a
                  href="#"
                  className="font-medium text-red-600 dark:text-red-500 hover:underline"
                >
                  Excluir
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </>
  );
};

export default Dashboard;
