x <- NULL;
system.time( for(i in 1:10^5) { x[i] = 2*i } );
system.time(y <- seq(1,2 * 10^5, by=2));
