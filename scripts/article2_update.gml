//comment

if(d_oil < d_max_oil){
    d_oil_timer += 1;

    if(d_oil_timer > d_oil_recharge){
        d_oil+=1;
        d_oil_timer = 0;
    }
}