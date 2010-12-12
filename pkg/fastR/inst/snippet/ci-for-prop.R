prop.intervals <- function(x,n,conf=0.95, which=1:3) {
    alpha = 1-conf;
    z.star <- - qnorm(alpha/2);
    pi.hat <- x/n;
    pi.wiggle <- (x+2)/(n+4);
    pm <- c(-1,1);
    se <- sqrt( pi.hat * (1-pi.hat)/n );
    se.wiggle <-  sqrt( pi.wiggle * (1-pi.wiggle)/n );
    wald <- pi.hat + pm * z.star * se;
    wilson <- pi.wiggle + pm * z.star * se.wiggle;
    zzn <- z.star^2/n;
    score <- ( pi.hat + zzn/2 + pm * z.star * sqrt( se^2 + zzn/(4*n) ) ) / (1 + zzn);
    rbind(wald=wald,wilson=wilson,score=score);
}
