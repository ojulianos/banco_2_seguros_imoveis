import React, { useEffect, useState } from "react";
import ReactDOM from "react-dom";
import { NavLink } from 'react-router-dom';



const Clientes = () => {

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
        <NavLink to="/clienteCreateForm" className="bg-green-500 hover:bg-green-600 text-white font-bold py-2 px-4 rounded">
          Cadastrar Novo Cliente
        </NavLink>
      </div>
      <div className="relative overflow-x-auto mt-8 shadow-md sm:rounded-lg mx-auto">
        <table className="w-full text-sm text-left rtl:text-right text-white dark:text-white">
          <thead className="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-white">
            <tr>
              <th scope="col" className="px-2 py-2">
                Endereço
              </th>
              <th scope="col" className="px-2 py-2">
                Cliente
              </th>
              <th scope="col" className="px-2 py-2">
                Data Fim
              </th>
              <th scope="col" className="px-2 py-2">
                Valor Cobertura
              </th>
              <th scope="col" className="px-2 py-2">
                Valor Franquia
              </th>
              <th scope="col" className="px-2 py-2">
                Qtd Sinistro
              </th>
              <th scope="col" className="px-6 py-3">
                <span className="sr-only">edit</span>
              </th>
            </tr>
          </thead>
          <tbody>
          

          <tr className="bg-white border-b  dark:bg-gray-800 dark:border-gray-700">
            <td className="px-6 py-4 ">{clientes.Endereço}</td>
            <td className="px-6 py-4">{clientes.Cliente}</td>
            <td className="px-6 py-4">{Clientes.DataFim}</td>
            <td className="px-6 py-4">{Clientes.ValorCobertura}</td>
            <td className="px-6 py-4">{Clientes.ValorFranquia}</td>
            <td className="px-6 py-4">{Clientes.QtdSinistro}</td>
            <td className="px-6 py-4 text-right">
            <NavLink
                  to="/clienteCreateForm"
                  className="font-medium p-1 text-blue-600 dark:text-blue-500 hover:underline"
                >
                  Editar
                </NavLink>
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

export default Clientes;