import axios from 'axios';

export const HelloGetApi = async (): Promise<string> => {
    return axios.get('http://localhost:8080/api/hello')
        .then(res => res.data.message)
        .catch(error => {
            console.error(error);
            throw new Error('Error fetching data');
        });
};
