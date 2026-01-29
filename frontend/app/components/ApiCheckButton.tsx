// Client Component：配信されるコンポーネントとして宣言することで、ブラウザ側で動作する
'use client';

import { useState } from 'react';
import axios from 'axios';

export default function ApiCheckButton() {
    const [clientMessage, setClientMessage] = useState<string>('');

    const checkApi = () => {
        setClientMessage('Loading...');
        axios.get('http://localhost:8080/api/hello')
            .then(res => setClientMessage(res.data.message))
            .catch(error => {
                console.error(error);
                setClientMessage('Error fetching data');
            });
    };

    return (
        <div style={{ marginTop: "20px", padding: "10px", border: "1px solid #ccc", borderRadius: "5px" }}>
            <h2>Client Component Test:</h2>
            <button
                onClick={checkApi}
                style={{
                    padding: "8px 16px",
                    backgroundColor: "#0070f3",
                    color: "white",
                    border: "none",
                    borderRadius: "4px",
                    cursor: "pointer"
                }}
            >
                Check API
            </button>
            {clientMessage && (
                <p style={{ marginTop: "10px", fontWeight: "bold", color: "blue" }}>
                    {clientMessage}
                </p>
            )}
        </div>
    );
}
