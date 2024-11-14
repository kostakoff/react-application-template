import React from 'react';
import Container from '@mui/material/Container';
import Header from './Header';
import DataTable from './DataTable';

const App = () => {
    return (
        <div>
            <Header />
            <Container>
                <DataTable />
            </Container>
        </div>
    );
};

export default App;