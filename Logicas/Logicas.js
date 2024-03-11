function retornaVetorIdades() {
  let vetorIdades = [];
  for(let i = 10; i <= 50; i++) {
    vetorIdades.push(i);
  }
  return vetorIdades;
}

function retornaVetorSeriesEscolares() {
  let vetorSeries = ["1º ano", "2º ano", "3º ano"];
  return vetorSeries;
}

function retornaVetorTurnosEscolares() {
  let vetorTurnosEscolares = ["Matutino", "Tarde", "Noite", "Integral"]
  return vetorTurnosEscolares;
}

function entrar() {
  carregadorDeComponentes.sourceComponent = telaHomeScreenEscola;
}
