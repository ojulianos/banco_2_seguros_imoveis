import React, { useEffect, useState } from "react";
import ReactDOM from "react-dom";
import { NavLink } from 'react-router-dom';



const Clientes = () => {

  const defaultValue = []
  const [clientes, setClientes] = useState(defaultValue);

  const getApiData = async () => {
    await fetch('https://banco2segurosimoveis-production.up.railway.app/clientes',  {method: 'GET'})
    .then(response => response.json())
    .then(response => {
      setClientes(response)
      console.log('clientes')
      console.log(response)
    })
    .catch(err => console.error(err));
  };

  useEffect(() => {
    getApiData();
  }, []); 

  function deleteItem(id) {
    const options = {method: 'DELETE'};

    fetch(`https://banco2segurosimoveis-production.up.railway.app/clientes/${id}`, options)
      .then(response => response.json())
      .then(response => {
        alert('Cliente excluído com sucesso!')
        getApiData(); 
        console.log(response)
      })
      .catch(err => console.error(err));
  }

  
  
  return (
    
    <>
    
    <div className="mt-8 mb-8 mr-8">
        <NavLink to="/clienteCreate" className="bg-green-500 hover:bg-green-600 text-white font-bold py-2 px-4 rounded">
          Cadastrar Novo Cliente
        </NavLink>
      </div>
      <div className="relative overflow-x-auto mt-8 shadow-md sm:rounded-lg mx-auto">
        <table className="w-full text-sm text-left rtl:text-right text-white dark:text-white">
          <thead className="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-white">
            <tr>
              <th scope="col" className="px-2 py-2">
                Nome
              </th>
              <th scope="col" className="px-2 py-2">
                Documento
              </th>
              <th scope="col" className="px-2 py-2">
                Bairro
              </th>
              <th scope="col" className="px-2 py-2">
                Cidade
              </th>
              <th scope="col" className="px-2 py-2">
                Telefone
              </th>
              <th scope="col" className="px-2 py-2">
                Rendimento
              </th>
              <th scope="col" className="px-6 py-3">
                <span className="sr-only">edit</span>
              </th>
            </tr>
          </thead>
          <tbody>
          
          {clientes?.map((cliente) => (
            <tr className="bg-white border-b  dark:bg-gray-800 dark:border-gray-700" key={cliente.cli_cod}>
              <td className="px-6 py-4 ">{cliente.cli_nome}</td>
              <td className="px-6 py-4">{cliente.cli_documento}</td>
              <td className="px-6 py-4">{cliente.cli_bairro}</td>
              <td className="px-6 py-4">{cliente.cli_cidade}</td>
              <td className="px-6 py-4">{cliente.cli_telefone}</td>
              <td className="px-6 py-4">{cliente.cli_rendimento}</td>
              <td className="px-6 py-4 text-right">
              <NavLink
                    to={`/clienteEdit/${cliente.cli_cod}`}
                    className="font-medium p-1 text-blue-600 dark:text-blue-500 hover:underline"
                  >
                    Editar
                  </NavLink>
                  &nbsp;
                  <button
                    onClick={(e)=>{
                      e.stopPropagation();
                      e.preventDefault();
                      deleteItem(cliente.cli_cod);
                   }}
                   
                    // to={`/clienteDelete/${cliente.cli_cod}`}
                    className="font-medium text-red-600 dark:text-red-500 hover:underline"
                  >
                    Excluir
                  </button>
              </td>
            </tr>

          ))}
            
          </tbody>
        </table>
      </div>
    </>
  );
};

export default Clientes;