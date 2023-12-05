import React, { useEffect, useState } from "react";
import ReactDOM from "react-dom";
import { NavLink } from 'react-router-dom';



const Clientes = () => {

  const defaultValue = []
  const [clientes, setClientes] = useState(defaultValue);

  const getApiData = async () => {
    const response = await fetch('https://cryptic-stream-94767-b9f22ccd744b.herokuapp.com/1',  {method: 'GET'})
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

  function deleteItem(id) {
    const options = {method: 'DELETE'};

    fetch(`https://cryptic-stream-94767-b9f22ccd744b.herokuapp.com/${id}`, options)
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
          
          {clientes.map((cliente) => (

            <tr className="bg-white border-b  dark:bg-gray-800 dark:border-gray-700" key={cliente.id}>
              <td className="px-6 py-4 ">{cliente.Endereço}</td>
              <td className="px-6 py-4">{cliente.Cliente}</td>
              <td className="px-6 py-4">{cliente.DataFim}</td>
              <td className="px-6 py-4">{cliente.ValorCobertura}</td>
              <td className="px-6 py-4">{cliente.ValorFranquia}</td>
              <td className="px-6 py-4">{cliente.QtdSinistro}</td>
              <td className="px-6 py-4 text-right">
              <NavLink
                    to={`/clienteEdit/${cliente.id}`}
                    className="font-medium p-1 text-blue-600 dark:text-blue-500 hover:underline"
                  >
                    Editar
                  </NavLink>
                  &nbsp;
                  <button
                    onClick={(e)=>{
                      e.stopPropagation();
                      e.preventDefault();
                      deleteItem(cliente.id);
                   }}
                   
                    // to={`/clienteDelete/${cliente.id}`}
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