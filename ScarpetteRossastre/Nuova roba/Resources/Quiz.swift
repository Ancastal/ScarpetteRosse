//
//  Quiz.swift
//  ProjectWomen2
//
//  Created by Tommaso Tranchese on 29/11/21.
//

import Foundation
import SwiftUI

struct Quiz: Identifiable {
    
    let id = UUID()
    let question: String
    
}

let questionnaire: [Quiz] = [Quiz(question: "Domanda1"), Quiz(question: "Domanda2"), Quiz(question: "Domanda3")]

let quiz: [String] = ["Quando si rivolge a te, ti chiama con nomignoli che non ti piacciono e/o con parole sgradevoli?", "Ti accusa di avere altre relazioni, oppure che i tuoi amici vogliono averne con te?", "Ti dice che ha relazioni con altre donne e ti paragona alle sue ex partners?", "Vuole sempre sapere cosa stai facendo e/o con chi stai?", "Ti critica e si burla del tuo corpo?", "Critica costantemente i tuoi comportamenti e/o esagera i tuoi difetti in pubblico o in privato?" ,"Quando stai con lui ti senti tesa o hai la sensazione che qualsiasi cosa tu faccia lui si infastidisca?", "Quando uscite insieme e dovete decidere che fare, decide sempre lui?", "Quando parlate tra di voi ti senti male perché ti parla solo di sesso e vuole sapere delle tue relazioni precedenti?", "Senti che il tuo compagno ti controlla costantemente per amore?", "Se hai ceduto ai suoi desideri sessuali lo hai fatto per timore, per compiacenza o per la pressione subita?", "Ti impedisce o ti condiziona nell'uso di metodi contraccettivi se hai relazioni sessuali con lui?", "Ti ha obbligato a vedere materiale pornografico e/o ad avere pratiche sessuali che non ti piacevano?", "Ha esercitato pressioni o ti ha obbligato a consumare droghe?", "Se il tuo compagno assume alcool o si droga, poi ha un comportamento violento con te e/o con altre persone?", "A causa dei problemi con il tuo compagno hai avuto una delle seguenti alterazioni: perdita di appetito o sonnolenza?", "Ancora: scarso rendimento nelle tue attività, abbandono delle abitudini, allontanamento da amici e familiari?", "Quando vi arrabbiate o discutete hai mai temuto per la tua vita?", "Ti ha mai colpito con parti del suo corpo o con qualche oggetto?", "Ti ha mai provocato lesioni che richiedessero l'intervento di un professionista?", "Ha mai minacciato di uccidersi quando hai qualche problema con lui?", "Dopo averti umiliato e/o colpito fisicamente, il tuo compagno si mostra affettuoso e attento, e ti promette che non accadrà mai più?"]














