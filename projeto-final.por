programa
{
	inclua biblioteca Texto
	inclua biblioteca Util
	
	inteiro dia
	cadeia cpf
	real limiteEstudantil = 5000.00
	inteiro numero
	real saldo 
	logico ativa
	
	funcao inicio()
	{
		//variaveis
		caracter opcao
		cadeia tipo
		//variaveis

		//laço
		faca {
		//entradas
		limpa()
		escreva("Banco Geração\n")
		escreva("Um banco feito para sua todes.\n")
		escreva("\n")
		escreva("Usuárie, escolha a opção correspondente ao seu tipo de conta\n")
		escreva("1 - Conta Poupança\n")
		escreva("2 - Conta Corrente\n")
		escreva("3 - Conta Especial\n")
		escreva("4 - Conta Empresa\n")
		escreva("5 - Conta Estudantil\n")
		escreva("6 - Sair\n")
		escreva("Digite o número da sua opção: ")
		leia(opcao)
		limpa()	
		se (opcao == '1'){ //laço 
			// PARTE RUTH INICIO **********************************************************************************
			tipo = "Poupança"
			cabecalho(tipo)
			
			inteiro diaAniversarioPoupanca = 5
			real saldo = 0.0
			caracter res

			para (inteiro adicionar = 0; adicionar <=10; adicionar++){
				escreva("Você deseja adicionar saldo a sua poupança ?\n Sim (S) - Não (N): ")
				leia (res)
			
				se (res=='S' ou res=='s'){
					escreva("Qual o valor que você ira adicionar ?")
					leia(saldo)
					escreva("Que dia é hoje ? ")
					leia (dia)
				}
				senao se(res=='N' ou res=='n') {
					escreva("Você escolheu não adocionar novo saldo, operação encerrada!\n")
					pare
				}
				se (dia == diaAniversarioPoupanca){
					saldo = (saldo * 0.05)+saldo
					escreva ("A data informada é equivalente ao dia de faturamento da poupança, seu saldo atual é: \n", saldo, "\n")	
					Util.aguarde(5000)
				}
				senao se (dia != diaAniversarioPoupanca){
					escreva("O dia informado não bate com o dia de faturamento de sua poupança. O saldo é de ", saldo, " R$\n")
				}
			}
		}
		// PARTE RUTH FIM ***************************************************************************************
		
		senao se (opcao == '2'){
		// PARTE GABE INICIO **************************************************************************************
				inteiro contaCorrente 
				real saldo = 0.00
				cadeia opcaoCorrente
				real debitoCorrente
				real creditoCorrente 
				cadeia pedirTalao
				inteiro numeroTalao = 0
				inteiro contadorTalao = 3
				real debito = 0.00
				real credito = 0.00
				limpa()
		
				para (inteiro y = 0; y < 10; y++) {

				escreva("\nDigite 1-Débito ou 2-Crédito: ")
				leia(opcaoCorrente)

				se (opcaoCorrente == "1") {
					
			     escreva("\nQual valor será retirado? R$")
				leia(debitoCorrente)

				se (debitoCorrente <= saldo) {
				saldo = saldo - debitoCorrente
				escreva("\nO seu saldo atual é: R$" , saldo , ".\n")
					} 
				senao {
				escreva("\nSaldo insuficiente.\n")
					}
				} 
				senao se (opcaoCorrente == "2") {
				escreva("Quanto deseja adquirir? R$")
				leia(creditoCorrente)
				saldo = saldo + creditoCorrente
				escreva("\nO seu saldo atual é: R$" ,saldo, ".\n")
				} 
				senao {
				escreva("\nOpção inválida. Tente novamente.\n")
				}
				
			}
			
				escreva("Deseja solicitar um cheque?\nDigite S para sim ou N para não: ")
				leia(pedirTalao)
	
				se (pedirTalao == "S" ou pedirTalao == "sim" ou pedirTalao == "s"){
			    escreva("Quantos cheques voce deseja?\nLembrando que seu limite é de 3 talões: ")
			    leia(numeroTalao)
			    
			    para (inteiro x = 3; x <=3; x++){
			    se(numeroTalao <= contadorTalao){
			    contadorTalao = contadorTalao - numeroTalao
			    escreva("Cheque liberado\n")
			    escreva("Você tem direito a: ", contadorTalao)
			    		}
			    senao {
				    			escreva("Você não pode mais solicitar esse serviço.")
				    	}    		 
			    	}
			}
			    senao {
			    escreva("Obrigado, até logo.")
			}
			Util.aguarde(5000)
		}
		// PARTE GABE FIM ***************************************************************************************	
		
		senao se (opcao == '3'){
			Especial()
		}
		senao se (opcao == '4'){
			tipo = "Empresa"
			cabecalho(tipo)
			Util.aguarde(2000)
		} 
		senao se (opcao == '5'){
			contaEstudantil()
		}
		senao se (opcao == '6'){
			escreva("Sair")
			Util.aguarde(2000)
			pare
		} senao {
			escreva("Número inválido.\n")
			Util.aguarde(2000)
		}//laço
 
		
	 } enquanto (opcao != '6') //laço 
	 	escreva("\nFim.")
	} 
					
	funcao cabecalho (cadeia tipo){
		escreva("Banco Geração!\n")
		escreva("Um banco feito para sua todes.\n")
		escreva("\n")
		escreva("Conta ", tipo, "\n")
		escreva("Informe seu CPF: ")
		leia(cpf)
	}
	// PARTE THAIS INICIO *****************************************************************
	funcao Especial()
	{
		real limite = 1000.00
		inteiro cont = 1
		real saldo = 0.0
		inteiro opcao
		inteiro opcao2
		real valorTransacao = 0.00
		real contador
		real resto
		inteiro movimentacoes = 10
		limpa()
			faca
			{		
				faca{	
					limpa()
					
					escreva("\nCONTA ESPECIAL\n")
					escreva("Saldo atual: ", saldo,"\n")
					escreva("Limite disponível: ", limite,"\n")
					escreva("Escolha uma das operações a seguir:\n'1' para débito\n'2' para crédito\n")
					escreva("Digite o número da operação selecionada: ")
					leia(opcao2)
					se(opcao2 != 1 e opcao2 != 2)
					{
						escreva("Opção inválida. Tente realizar outra operação: ")
						Util.aguarde(3000)
						limpa()
					}
					
				} enquanto(opcao2 != 1 e opcao2 != 2)
					se(opcao2 == 2 ou opcao2 == 2)
					{
						limpa()
						escreva("Digite o valor da transação: R$")
						leia(valorTransacao)
						se(limite < 1000)
						{
							limite = limite + valorTransacao
							se(limite > 1000)
							{
								saldo = saldo + limite - 1000
								limite = 1000.00
							}
						}
						senao
						{

							saldo = saldo + valorTransacao
							escreva("Seu saldo atual é de: R$",saldo,"\nSeu limite é de: R$",limite)
							Util.aguarde(4000)
							limpa()
						}
					}
					senao se(saldo>=0)
					{
						limpa()
						escreva("Digite o valor da transação: R$")
						leia(valorTransacao)
						saldo = saldo - valorTransacao
					
						se(saldo < 0 )
						{
							se ((limite*-1) <= saldo)
							{
								limite = limite + saldo
								saldo = saldo - saldo
								limpa()
								escreva ("\nVocê atingiu o limite do cheque especial")
								escreva("\nSaldo atual: R$",saldo)
								escreva("\nLimite cheque especial: R$",limite)
								Util.aguarde(4000)
								limpa()
							}
							senao
							{
								escreva("Não é possível realizar esta operação, limite insuficiente\n")
								Util.aguarde(3000)
								limpa()
								saldo = saldo + valorTransacao
							}
						}
					}
						escreva("Deseja fazer outra operação? '1' para sim ou '2' para não: ")
						leia(opcao)
						se(opcao == 1)
						{
							movimentacoes--
							se(movimentacoes == 0)
							{
								escreva("Limite de operações atingido.\n")
								escreva("Obrigade, por escolher o Banco Geração !")
								Util.aguarde(5000)
							}
					
						}
						senao
						{
							movimentacoes = 0
						}
			}enquanto(movimentacoes !=0)	
	}
	// PARTE THAIS FIM ********************************************************************

	// PARTE DAVID INICIO *****************************************************************************************

	funcao real debito(real saldo, real valor){
		saldo -= valor

		retorne saldo
	}
	funcao real credito(real saldo, real valor){
		saldo += valor

		retorne saldo
	}
	funcao contaEstudantil()
	{
		cadeia tipoMov = "", continuar = "", tipo = ""
		real valorMov = 0.0, saldo = 0.0
		inteiro numeroConta = 0
		
		tipo = "ESTUDANTIL"

		escreva("Digite o numero da conta: ")
		leia(numeroConta)
		limpa()
		
		cabecalho(tipo)
		escreva("\n\nCONTA Nº: ", numeroConta)
		
		// Movimentação da Conta ********************************************************
		para(inteiro i = 1; i<= 10; i++){
			faca{
				escreva("\nMovimento: ", i,"\n")
				escreva("\nSaldo Atual: R$ ", saldo)
	
				//Verificando Debito ou Credito ********************************************
				faca{
					escreva("\nMovimento: D - Débito ou C - Crédito ou V - Voltar: ")
					leia(tipoMov)
					tipoMov = Texto.caixa_alta(tipoMov)
					
					se(tipoMov == "D" ou tipoMov == "C" ou tipoMov == "V" ){}
					senao{ escreva("\nOpção inválida digite D - Débito ou C - Crédito") }
					
				}enquanto(tipoMov != "D" e tipoMov != "C" e tipoMov != "V")
				//**************************************************************************

				se (tipoMov == "V"){
					limpa()
					inicio()
				}
				
				escreva("\nValor Movimento: R$ ")
				leia(valorMov)
	
				se(tipoMov == "D" e (debito(saldo, valorMov) < 0)){
					escreva("Operação Interrompida\n")
					escreva("Conta ficou negativa.\n\n")
					escreva("Saldo se efetuar a operação: ", debito(saldo, valorMov),"\n")
					Util.aguarde(3000)
					limpa()

					saldo = creditoEstudantil(continuar, valorMov, saldo)

				}
			}enquanto(tipoMov == "D" e (debito(saldo, valorMov) < 0))
						
			// Verificando Opcao Continuar **************************************************
			faca{
				escreva("\nContinuar S/N: ")
				leia(continuar)
	
				continuar = Texto.caixa_alta(continuar)
				
				se(continuar == "S" ou continuar == "N"){}
				senao{ escreva("\nOpção inválida digite S-Sim ou N-Não") }
				
			}enquanto(continuar != "S" e continuar != "N")
			//********************************************************************************
			se(continuar == "N"){ i = 11 }
			senao {
				se(tipoMov == "D"){
					saldo = debito(saldo, valorMov)
					se(saldo >= 0){
						escreva("\nSaldo após utilizar limite e pagar a divida: \n")
						escreva("R$ ", saldo, "\n")
					}
				}
				senao{
					saldo = credito(saldo, valorMov)
				}
			}
		}// Final Movimentação da Conta *****************************************************
		
		Util.aguarde(2000)
		limpa()
		
		saldo = creditoEstudantil(continuar, valorMov, saldo)
		
		Util.aguarde(2000)
		limpa()
		
		inicio()
	}

	funcao real creditoEstudantil(cadeia continuar, real valorMov, real saldo){

				
		//Usar Credito Estudantil ************************************************************
		escreva("Crédito Estudantil Disponivel(CE): R$ ", limiteEstudantil)
		se(limiteEstudantil <= 0){
			escreva("\n\nFALIDO!!! Seu CE acabou :'(")
		}senao{
			// Verificando Opcao Continuar **************************************************
				faca{
					escreva("\nDeseja utilizar o Crédito Estudantil(CE) ?\nUsar S/N: ")
					leia(continuar)
		
					continuar = Texto.caixa_alta(continuar)
					
					se(continuar == "S" ou continuar == "N"){}
					senao{ escreva("\nOpção inválida digite S-Sim ou N-Não") }
					
				}enquanto(continuar != "S" e continuar != "N")
			//********************************************************************************
			se(continuar == "N"){}
			senao{
				faca{
					escreva("\nValor Movimento: R$ ")
					leia(valorMov)	
					se(valorMov > limiteEstudantil){
						escreva("\nSolicitação maior que o Crédito Estudantil Permitido !\n")
						Util.aguarde(2000)
						limpa()
						escreva("Limite de Crédito Estudantil Disponivel: ", limiteEstudantil, "\n")
					}
				}enquanto(valorMov > limiteEstudantil)		
					limiteEstudantil -= valorMov
					saldo += valorMov
					Util.aguarde(2000)
					escreva("\n\nSaldo atual após o CE solicitado: R$", saldo)
			}		
			//Final Credito Estudantil ***********************************************************
		}
		retorne saldo
	}
	// PARTE DAVID FINAL*****************************************************************************************
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4233; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */