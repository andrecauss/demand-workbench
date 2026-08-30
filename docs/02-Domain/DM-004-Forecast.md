# Forecast

Um Forecast prevê a demanda de uma Planning Unit em um horizonte definido. Ele registra a previsão base gerada pelo modelo selecionado e, quando aplicável, o resultado ajustado após regras de negócio aprovadas.

O MVP suporta ETS, Moving Average, Croston, Holt-Winters, Prophet e ARIMA. Um Forecast deve permanecer reproduzível a partir do snapshot dos dados-fonte, identidade do modelo, parâmetros, horário de execução e ajustes aplicados.
