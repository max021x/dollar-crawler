import { currency } from "@/actions/fetch"; 


export default async function Home(){
    const response = await fetch('https://brsapi.ir/FreeTsetmcBourseApi/Api_Free_Gold_Currency_v2.json') ; 
    const data = await response.json() ; 
    const {...alldata}  = data ; 
    currency(alldata) ;

    // carts 
    return(
    <>
        <p>getting data</p>
    </>)
}
