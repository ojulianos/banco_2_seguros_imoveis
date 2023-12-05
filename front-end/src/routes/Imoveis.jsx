import React, { useEffect, useState } from "react";
import ReactDOM from "react-dom";
import { NavLink } from 'react-router-dom';



const Imoveis = () => {

  const defaultValue = []
  const [imoveis, setImoveis] = useState(defaultValue);

  const getApiData = async () => {
    const response = await fetch('https://banco2segurosimoveis-production.up.railway.app/apolices',  {method: 'GET'})
    .then(response => response.json())
    .then(response => {
      setImoveis(response)
      console.log(response)
    })
    .catch(err => console.error(err));
  };

  useEffect(() => {
    getApiData();
  }, []); 

  function deleteItem(id) {
    const options = {method: 'DELETE'};

    fetch(`https://banco2segurosimoveis-production.up.railway.app/apolices/${id}`, options)
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
        <NavLink to="/imovelCreate" className="bg-green-500 hover:bg-green-600 text-white font-bold py-2 px-4 rounded">
          Cadastrar Nova Apolice
        </NavLink>
      </div>
      <div className="relative overflow-x-auto mt-8 shadow-md sm:rounded-lg mx-auto">
        <table className="w-full text-sm text-left rtl:text-right text-white dark:text-white">
          <thead className="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-white">
            <tr>
              <th scope="col" className="px-2 py-2">
                Cod Cliente
              </th>
              <th scope="col" className="px-2 py-2">
                Dt Inicio Vig
              </th>
              <th scope="col" className="px-2 py-2">
                Dt Fim Vig
              </th>
              <th scope="col" className="px-2 py-2">
                Valor Cob
              </th>
              <th scope="col" className="px-2 py-2">
                Valor Franq
              </th>
              <th scope="col" className="px-6 py-3">
                <span className="sr-only">edit</span>
              </th>
            </tr>
          </thead>
          <tbody>
          {imoveis.map((imovel) => (
            <tr className="bg-white border-b  dark:bg-gray-800 dark:border-gray-700" key={imovel.apo_cod}>
              <td className="px-6 py-4 ">{imovel.apo_apo_cod}</td>
              <td className="px-6 py-4">{imovel.apo_dt_inicio_vigencia}</td>
              <td className="px-6 py-4">{imovel.apo_dt_fim_vigencia}</td>
              <td className="px-6 py-4">{imovel.apo_valor_cobertura}</td>
              <td className="px-6 py-4">{imovel.apo_valor_franquia}</td>
              <td className="px-6 py-4 text-right">
              <NavLink
                    to={`/imovelEdit/${imovel.apo_cod}`}
                    className="font-medium p-1 text-blue-600 dark:text-blue-500 hover:underline"
                  >
                    Editar
                  </NavLink>
                  &nbsp;
                  <button
                    onClick={(e)=>{
                      e.stopPropagation();
                      e.preventDefault();
                      deleteItem(imovel.apo_cod);
                   }}
                   
                    // to={`/imovelDelete/${imovel.apo_cod}`}
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

export default Imoveis;