seatpos.lm1a=lm(hipcenter ~ Age + Weight + Ht + Seated + Arm + Thigh + Leg,
    seatpos)
###hop:3-9
summary(seatpos.lm1a)
vif(seatpos.lm1a)
