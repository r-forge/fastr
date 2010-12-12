plot <- xyplot(palettes~day,palettes,
			groups=employee,
#			main="Productivity by day and employee",
			type='b',auto.key=list(columns=2,lines=TRUE))
