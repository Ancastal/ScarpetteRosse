//
//  ResultView.swift
//  ScarpetteRossastre
//
//  Created by Antonio Castaldo on 09/12/21.
//

import SwiftUI

struct ResultView: View {
    @State var showResult: String
    var body: some View {
        switch showResult
        {
        case "alcuneDifficoltà":
            GeometryReader { metrics in
                VStack {
                    ZStack {
                        orange.ignoresSafeArea()
                        ScrollView {
                            ZStack {
                                
                                
                                Text("RELAZIONE CON ALCUNE DIFFICOLTÀ\n\nDalle risposte che hai dato sembra che la tua sia una relazione con alcune conflittualità. Le discussioni o i problemi possono essere gestiti tra di voi. Le problematiche che presenta la tua relazione possono essere esterne alla coppia. È importante sviluppare capacità che possano aiutare a risolverli ma non sei all’interno di una relazione di violenza. Questo non significa che devi smettere di monitorare la tua relazione, parla con il tuo partner e non accettare nessun comportamento di prevaricazione, maltrattamento, svalorizzazione. Ciò non toglie che questi possono essere dei segnali di allarme di violenza.\n\nSe non ti senti sicura confrontati con coloro che hanno esperienza di violenza sulle donne scrivendo allo Sportello Antiviolenza online: sportello@reamanetwork.org , oppure chiama il 1522 – numero verde contro la violenza: ti sarà indicato il centro antiviolenza più vicino alla zona/città in cui vivi che potrà aiutarti a uscire da questa situazione.\n\nRicorda sempre che in caso di pericolo è fondamentale chiamare subito il 112. Racconta l’accaduto e chiedi aiuto!")
                                    .fontWeight(.light)
                                    .frame(minWidth: 0, maxWidth: 330, minHeight: 50)
                                    .padding(.all, 18)
                                    .foregroundColor(Color.black)
                                    .font(.title3)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                    .overlay(RoundedRectangle(cornerRadius:20).strokeBorder(.black, lineWidth: 0.5))
                            }
                            
                        }
                    }
                }
                
            }
        case "relazioneViolenta":
            GeometryReader { metrics in
                orange.edgesIgnoringSafeArea(.top)
                ZStack {
                    
                    ScrollView {
                        Text(LocalizedStringKey("RELAZIONE VIOLENTA\n\nDalle risposte che hai dato sembra che la tua sia una relazione violenta. È importante distinguere i conflitti dai comportamenti violenti. Il tuo compagno si sta comportando ogni volta con più aggressività per risolvere i conflitti e la tensione per te comincia ad accumularsi. Devi controllare la situazione con attenzione perché i segnali fanno pensare che la situazione non migliorerà in futuro. Non si devono giustificare i comportamenti che mortificano e provocano malessere. I momenti di aggressività e rabbia spesso sono seguiti da momenti di calma apparente, false riappacificazioni, che poi si ripetono nuovamente.\n\nMeglio chiedere aiuto, non è possibile aspettare ancora.\n\nConfrontati con coloro che hanno esperienza di violenza sulle donne scrivendo allo Sportello Antiviolenza online: sportello@reamanetwork.org , oppure chiama il 1522 – numero verde contro la violenza: ti sarà indicato il centro antiviolenza più vicino alla zona/città in cui vivi che potrà aiutarti a uscire da questa situazione.\n\nRicorda sempre che in caso di pericolo è fondamentale chiamare subito il 112. Racconta l’accaduto e chiedi aiuto!"))
                            .fontWeight(.light)
                            .frame(minWidth: 0, maxWidth: 330, minHeight: 50, alignment: .center)
                            .padding(.all, 18)
                            .foregroundColor(Color.black)
                            .font(.title3)
                            .background(Color.white)
                            .cornerRadius(20)
                            .overlay(RoundedRectangle(cornerRadius:20).strokeBorder(.black, lineWidth: 0.5))
                        
                        
                        
                    }
                }.padding()
                
                //            }
                
            }
        case "definitivamenteViolenta":
            GeometryReader { metrics in
                VStack {
                    ZStack {
                        orange.ignoresSafeArea()
                        ScrollView {
                            ZStack {
                                Text("RELAZIONE DEFINITIVAMENTE VIOLENTA\n\nDalle risposte che hai dato sembra che la tua sia una relazione definitivamente violenta.\nGli atti violenti nascono sulla base di qualsiasi pretesto e ogni volta con maggiore frequenza e intensità. Il rischio che questa situazione continui è alto. Speri ancora che le cose possano cambiare. Il tuo partner potrebbe farti pensare che tutto quel che succede è per colpa tua. Non è né giusto né normale che tutto ciò avvenga. Non sottovalutare la violenza, situazioni come queste che vanno avanti da molto tempo e continuano ad aumentare, non cesseranno mai.\n\nCerca aiuto subito.\n\nConfrontati con coloro che hanno esperienza di violenza sulle donne scrivendo allo Sportello Antiviolenza online: sportello@reamanetwork.org , oppure chiama il 1522 – numero verde contro la violenza: ti sarà indicato il centro antiviolenza più vicino alla zona/città in cui vivi che potrà aiutarti a uscire da questa situazione.\nRicorda sempre che in caso di pericolo è fondamentale chiamare subito il 112. Racconta l’accaduto e chiedi aiuto!")
                                    .fontWeight(.light)
                                    .frame(minWidth: 0, maxWidth: 330, minHeight: 50)
                                    .padding(.all, 18)
                                    .foregroundColor(Color.black)
                                    .font(.title3)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                    .overlay(RoundedRectangle(cornerRadius:20).strokeBorder(.black, lineWidth: 0.5))
                            }
                            
                        }
                    }
                }
            }
        case "esplicitamenteViolenta":
            GeometryReader { metrics in
                VStack {
                    ZStack {
                        orange.ignoresSafeArea()
                        ScrollView {
                            ZStack {
                                Text("RELAZIONE ESPLICITAMENTE VIOLENTA\n\nDalle risposte che hai dato sembra che la tua sia una relazione esplicitamente violenta.\n\nLa tua vita è in pericolo, la tua salute fisica e/o mentale può essere severamente compromessa. Non lasciare passare ancora del tempo: può essere fatale! Il rischio che tu sia aggredita ancora una volta é molto elevato. Devi urgentemente prendere provvedimenti per la salvaguardia della tua incolumità e ricevere immediatamente un aiuto specialistico.\n\nChiedi aiuto, racconta tutte le violenze che hai subito, non solo quelle fisiche, anche quelle psicologiche, verbali, sessuali.\nConfrontati con coloro che hanno esperienza di violenza sulle donne scrivendo allo Sportello Antiviolenza online: sportello@reamanetwork.org , oppure chiama il 1522 – numero verde contro la violenza: ti sarà indicato il centro antiviolenza più vicino alla zona/città in cui vivi che potrà aiutarti a uscire da questa situazione.\n\nRicorda sempre che in caso di pericolo è fondamentale chiamare subito il 112. Racconta l’accaduto e chiedi aiuto!")
                                    .fontWeight(.light)
                                    .frame(minWidth: 0, maxWidth: 330, minHeight: 50)
                                    .padding(.all, 18)
                                    .foregroundColor(Color.black)
                                    .font(.title3)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                    .overlay(RoundedRectangle(cornerRadius:20).strokeBorder(.black, lineWidth: 0.5))
                            }
                        }
                    }
                }
            }
        case "nessunaDifficoltà":
            GeometryReader { metrics in
                VStack {
                    ZStack {
                        orange.ignoresSafeArea()
                        ScrollView {
                            ZStack {
                                Text("RELAZIONE CON NESSUNA DIFFICOLTÀ\n\nDalle risposte che hai dato sembra che la tua sia una relazione che non mostra nessuna conflittualità.")
                                    .fontWeight(.light)
                                    .frame(minWidth: 0, maxWidth: 330, minHeight: 50)
                                    .padding(.all, 18)
                                    .foregroundColor(Color.black)
                                    .font(.title3)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                    .overlay(RoundedRectangle(cornerRadius:20).strokeBorder(.black, lineWidth: 0.5))
                            }
                        }
                    }
                }
                .padding()
            }
        default:
            Text("Default") // you should never reach this
        }
        
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(showResult: "relazioneViolenta")
    }
}
