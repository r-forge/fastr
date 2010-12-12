require(vcd)
mosaic(Penalty~Defendant|Victim,data=death)
mosaic(~Defendant+Penalty+Victim,data=death)
structable(~Penalty+Defendant+Victim,data=death)
