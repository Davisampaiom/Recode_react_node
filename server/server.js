const express = require('express');
const app = express();
const mysql = require('mysql')
const cors = require('cors')

app.use(cors())
app.use(express.json());

const db = mysql.createConnection({
    user: 'root',
    host: 'localhost',
    password: '',
    database: 'fseletro'
});

app.get('/' , (req, res) => {
    db.query("SELECT * FROM produtos JOIN control_est ON produtos.id_produto = control_est.id" , (err, result)=>{
        if(err){
            console.log(err);
        }else{res.send(result)}
    })
})

app.post('/insert' , (req, res)=>{
    
    const nome = req.body.nome;
    const endereco = req.body.endereco;
    const numero = req.body.numero;
    const municipio = req.body.municipio;
    const estado = req.body.estado;
    const telefone = req.body.telefone;
    const email = req.body.email;
    const codigo = req.body.codigo;
    const quantidade = req.body.quantidade;

    db.query(
        "INSERT INTO pedido(id,nome, endereco, numero, municipio, estado, telefone, email, codigo, quantidade)VALUES(?,?,?,?,?,?,?,?,?,?)",
        [null, nome, endereco, numero, municipio, estado, telefone, email, codigo, quantidade ],
        (err, result) =>{
            if(err){
                console.log(err);
            }else{
                res.send("Valores inseridos com sucesso")
            }
        }
    );

});



app.listen(3010, () => {
    console.log("3010 é a porta onde a magia acontece!");
  });