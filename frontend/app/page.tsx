import axios from 'axios';
import ApiCheckButton from './components/ApiCheckButton';

export default async function Home() {
    const message = await axios.get('http://nginx:80/api/hello')
        .then(res => res.data.message)
        .catch(error => {
            console.error(error);
            return "Error fetching data";
        });

    return (
        <main style={{ padding: "2rem", fontFamily: "sans-serif" }}>
            <h1>ClearBoard GTD</h1>
            <p>Project initialized.</p>
            <div style={{ marginTop: "20px", padding: "10px", border: "1px solid #ccc", borderRadius: "5px" }}>
                <h2>API Response (Server Component):</h2>
                <p style={{ fontWeight: "bold", color: "green" }}>{message}</p>
            </div>

            <ApiCheckButton />
        </main>
    );
}
