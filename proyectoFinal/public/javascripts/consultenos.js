const URL_SERVER = 'http://localhost:3000';

const deleteConsulta = async(insertId) => {

    // Fetch method DELETE a mi URL_SERVER
    const response = await fetch(`${URL_SERVER}/consultenos/${insertId}`, {
        method: 'DELETE'
    });

    const result = await response.json();

    if(parseInt(result.id) === insertId){
        window.location.href = '/consultenos/deleted';
    }

}

