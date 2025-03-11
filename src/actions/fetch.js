// import {insertcurrency, saveAll } from "@/lib/db";
import { insertCurrency  , insertbBourse } from "@/lib/db";
export async function currency(allData) {
    // take the data form api 
    const { gold, currency, cryptocurrency } = allData;
    // const curentdate = gold[0]?.date;
    try {
        
        await currency.map(cur => {
            insertCurrency(cur.date, +cur.price, cur.symbol);
        })
        
        
        await gold.map(cur => {
            const arr = [] 
            for(let key of Object.keys(cur)){
                arr.push(cur[key])
            }
            arr.push("gold") ; 
            insertbBourse(...arr) 
        })
                
        await currency.map(cur => {
            const arr = [] 
            for(let key of Object.keys(cur)){
                arr.push(cur[key])
            }
            arr.push("gold") ; 

            insertbBourse(...arr) 
        })
        
        await cryptocurrency.map(cur => {
            const arr = [] 
            for(let key of Object.keys(cur)){
                arr.push(cur[key])
            }
            arr.push("gold") ; 

            insertbBourse(...arr) ;
        })

    } catch (error) {
        console.log(error) ; 
    }
    

    // redirect or create session 
}


