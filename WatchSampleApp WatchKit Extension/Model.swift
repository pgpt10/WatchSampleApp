//
//  Model.swift
//  WatchSampleApp
//
//  Created by Payal Gupta on 12/10/16.
//  Copyright © 2016 Infoedge Pvt. Ltd. All rights reserved.
//

import Foundation

enum HerbType
{
    case Basil, Saffron, Rosemary, Marjoram, Anise
    
    var detail : String{
        switch self
        {
        case .Basil:
            return "Basil is commonly used fresh in cooked recipes. In general, it is added at the last moment, as cooking quickly destroys the flavor. The fresh herb can be kept for a short time in plastic bags in the refrigerator, or for a longer period in the freezer, after being blanched quickly in boiling water. The dried herb also loses most of its flavor, and what little flavor remains tastes very different."
            
        case .Saffron:
            return "Saffron's aroma is often described by connoisseurs as reminiscent of metallic honey with grassy or hay-like notes, while its taste has also been noted as hay-like and sweet. Saffron also contributes a luminous yellow-orange colouring to foods. Saffron is widely used in Indian, Persian, European, Arab, and Turkish cuisines. Confectioneries and liquors also often include saffron."
            
        case .Rosemary:
            return "The leaves, both fresh and dried, are used in traditional Italian cuisine. They have a bitter, astringent taste and are highly aromatic, which complements a wide variety of foods. Herbal tea can be made from the leaves. When burnt, they give off a mustard-like smell and a smell similar to burning wood, which can be used to flavor foods while barbecuing. Rosemary is high in iron, calcium and vitamin B6."
            
        case .Marjoram:
            return "Marjoram is used for seasoning soups, stews, dressings and sauce. Majorana has been scientifically proved to be beneficial in the treatment of gastric ulcer, hyperlipidemia and diabetes. Majorana hortensis herb has been used in the traditional Austrian medicine for treatment of disorders of the gastrointestinal tract and infections."
            
        case .Anise:
            return "Anise is sweet and very aromatic, distinguished by its characteristic flavor. The seeds, whole or ground, are used in a wide variety of regional and ethnic confectioneries, including black jelly beans, British aniseed balls, Australian humbugs, and others. The Ancient Romans often served spiced cakes with aniseseed, called mustaceoe at the end of feasts as a digestive. "
        }
    }
    
    var usesArray : [String]{
        switch self
        {
        case .Basil:
            return ["Calming the Stomach– The Italians may be on to something with adding Basil to everything. It is thought to have a calming effect on the stomach and 1/2 teaspoon of dried or fresh Basil Leaf in water can often help sooth indigestion and alleviate feelings of fullness.",
                    "Coughing and Colds– I’ve heard several Amish in our area suggest using Basil leaf to help alleviate coughing and colds. They chew fresh leaves to calm coughing or make a calming tea of dried basil to help sooth illness.",
                    "There is some evidence that Basil can help level out blood sugar if consumed regularly and drank as a juice or tea."]
        
        case .Saffron:
            return ["Promotes learning and memory retention: Recent studies have also demonstrated that saffron extract, specifically its crocin, is useful in the treatment of age related mental impairment. In Japan, saffron is encapsulated and used in the treatment of Parkinson’s disease, memory loss and inflammation.",
                    "Protection against cold: Saffron is a stimulant tonic and very effective to treat cold and fever; saffron mixed in milk and applied over the forehead quickly relieves cold.",
                    "In patchy baldness: Saffron mixed in liquorice and milk makes an effective topical application to induce hair growth in alopecia."]
            
        case .Rosemary:
            return ["Rosemary Oil can be used externally in times of illness to speed recovery by rubbing on the feet or any areas that are sore.",
                    "Rosemary infused oil is an intensive treatment for bad dandruff of hair loss and can be rubbed on hair, left for at least an hour and washed out- this really improves scalp condition.",
                    "Rosemary Antioxidant Extract is a very effective natural preservative that can extend the shelf life of homemade lotions, cosmetics or other homemade body products."]
            
        case .Anise:
            return ["Anise seed oil obtained from extraction of the seeds has been found application in many traditional medicines as stomachic, anti-septic, anti-spasmodic, carminative, digestive, expectorant, stimulant and tonic agent.",
                    "The spicy seeds are one of important source of minerals like calcium, iron, copper, potassium, manganese, zinc and magnesium. 100 g dry seeds contain 36.96 mg or 462% daily required levels of iron. Potassium is an important component of cell and body fluids that helps control heart rate and blood pressure.",
                    "Copper is a cofactor for many vital enzymes, including cytochrome C-oxidase and superoxide dismutase (other minerals function as cofactors for this enzyme are manganese and zinc). Copper is also required in the production of red blood cells."]
            
        case .Marjoram:
            return ["Marjoram like I mentioned before effectively prevents snoring. To use marjoram as a home remedy for sleep, sniff marjoram essential oil right before sleeping. Taking a sniff of marjoram oil is said to greatly reduce the snoring. You can also try this blend of essential oil blend to make an effective home remedy for snoring: Take around 10 drops of lavender essential oil and 10 drops of marjoram essential oil in a small glass bottle. You can either add it to essential oil vaporizer and place it in the bedroom an hour before sleeping or simply sniff it before bed.",
                    "Marjoram is very useful for easing the inflammation and can be used to ease the pain of tooth infections, arthritis,  headaches and other pains. To use it for headache relief make marjoram tea by boiling the dried leaves in water till it is reduced in half and sweeten it with honey. This tea also relieves one of nervous headaches, cold and respiratory related problems. As this herb is very aromatic, a little goes a long way.",
                    "Marjoram treats the infections of the scalp. Try making this hair rinse, make a hair rinse by boiling a bunch of fresh marjoram in water and use it as a hair rinse. You can also add a few drops of marjoram essential oil to make it very effective. Of course lastly my favorite use, tie garlands with marjoram and jasmine flowers for your hair to calm your senses and make you feel really good!"]
        }
    }
}
