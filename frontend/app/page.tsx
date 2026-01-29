import ApiCheckButton from './components/ApiCheckButton';

export default async function Home() {
    return (
        <main style={{ padding: "2rem", fontFamily: "sans-serif" }}>
            <h1>ClearBoard GTD</h1>
            <p>Project initialized.</p>

            <ApiCheckButton />
        </main>
    );
}
