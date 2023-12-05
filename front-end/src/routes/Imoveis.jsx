import React, { useEffect, useState } from "react";
import ReactDOM from "react-dom";
import { NavLink } from 'react-router-dom';


const Imoveis = () => {
  const defaultValue = []
  const [clientes, setClientes] = useState(defaultValue);

  const getApiData = async () => {
    const response = await fetch('https://localhost:8080/',  {method: 'GET'})
    .then(response => response.json())
    .then(response => {
      setClientes(response.data)
      console.log(response.data)
    })
    .catch(err => console.error(err));
  };

  useEffect(() => {
    getApiData();
  }, []); 

  
  return (
     <>
    
    <div className="mt-8 mb-8 mr-8">
        <NavLink to="/imovelCreate" className="bg-green-500 hover:bg-green-600 text-white font-bold py-2 px-4 rounded">
          Cadastrar Imovel
        </NavLink>
      </div>
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
            
          {clientes.map((imovel) => (
            <tr className="bg-white border-b dark:bg-gray-800 dark:border-gray-700" key={imovel.id}>
              <td className="px-6 py-4">{imovel.Codigo}</td>
              <td className="px-6 py-4">{imovel.Valor}</td>
              <td className="px-6 py-4">{imovel.Logradouro}</td>
              <td className="px-6 py-4">{imovel.Bairro}</td>
              <td className="px-6 py-4">{imovel.Cidade}</td>
              <td className="px-6 py-4">{imovel.uf}</td>
              <td className="px-6 py-4">{imovel.Numero}</td>
              <td className="px-6 py-4">{imovel.Tipo}</td>
              <td className="px-6 py-4">{imovel.ValorIPTU}</td>
              <td className="px-6 py-4 text-right">
                <NavLink
                  to={`/imovelEdit/${imovel.id}`}
                  className="font-medium p-1 text-blue-600 dark:text-blue-500 hover:underline"
                >
                  Editar
                </NavLink>
                &nbsp;
                <NavLink
                  href={`/imovelDelete/${imovel.id}`}
                  className="font-medium text-red-600 dark:text-red-500 hover:underline"
                >
                  Excluir
                </NavLink>
              </td>
            </tr>
            ))}
          </tbody>
        </table>
      </div>
    </>
  );
};

export default Imoveis;
