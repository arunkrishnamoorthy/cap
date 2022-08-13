
module.exports = (srv) => {

    // Mock data for Books 
    srv.on('READ','Books', () => [
        { ID: 101, title: 'CAP Application Development', Author_ID: '101', stock: 12 },
        { ID: 102, title: 'ABAP Restful programming', Author_ID: '101', stock: 10 },
        { ID: 103, title: 'SAP CPI Integration', Author_ID: '102', stock: 3 }
    ])

    srv.on('READ','Authors', () => [
        { ID: 101, name: 'Emily Brown' },
        { ID: 102, name: 'Richard Billy'}
    ]);

}
