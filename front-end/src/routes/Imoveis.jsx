//import React from "react";

const Imoveis = () => {
  return (
    <>
      <div className="relative overflow-x-auto mt-8 shadow-md sm:rounded-lg">
        <table className="w-full text-sm text-left rtl:text-right text-white dark:text-white">
          <thead className="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-white">
            <tr>
              <th scope="col" className="px-6 py-3">
                Código
              </th>
              <th scope="col" className="px-6 py-3">
                Valor
              </th>
              <th scope="col" className="px-6 py-3">
                Logradouro
              </th>
              <th scope="col" className="px-6 py-3">
                Bairro
              </th>
              <th scope="col" className="px-6 py-3">
                Cidade
              </th>
              <th scope="col" className="px-6 py-3">
                UF
              </th>
              <th scope="col" className="px-6 py-3">
                Número
              </th>
              <th scope="col" className="px-6 py-3">
                Tipo
              </th>
              <th scope="col" className="px-6 py-3">
                Valor IPTU
              </th>
              <th scope="col" className="px-6 py-3">
                <span className="sr-only">Edit</span>
              </th>
            </tr>
          </thead>
          <tbody>
            <tr className="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
              <td className="px-6 py-4">123</td>
              <td className="px-6 py-4">$500,000</td>
              <td className="px-6 py-4">Rua Principal</td>
              <td className="px-6 py-4">Centro</td>
              <td className="px-6 py-4">Cidade Exemplo</td>
              <td className="px-6 py-4">SP</td>
              <td className="px-6 py-4">123</td>
              <td className="px-6 py-4">Casa</td>
              <td className="px-6 py-4">$800</td>
              <td className="px-6 py-4 text-right">
                <a
                  href="#"
                  className="font-medium p-1 text-blue-600 dark:text-blue-500 hover:underline"
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

export default Imoveis;
