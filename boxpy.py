# start on near left corner (lowest X and Y)
copperX = 12.5 # width of copper piece
boxX = 3.65
boxY = 3.15
lineWidth = 0.7 # width of green paste
moveSpeed = 2000
printSpeed = 500
startSpeed = 300
startLength = 3 # mm to use startSpeed
endLength = 3 # mm before end to turn off paste/fan
catEar = True
catEarAdjacent = 0.5 # how much to deviate +Y on the X run
catEarOpposite = 0.5 # when on X to finish deviating +Y (or start again)

# calculated stuff
startX = (copperX - (boxX + lineWidth)) / 2
startY = lineWidth / 2
endX = startX + boxX + lineWidth
endY = startY + boxY + lineWidth

with open('boxpy.g','w') as dataFile:
  dataFile.write('G91 ; relative positioning\n')
  dataFile.write("G1 X{0} Y{1} Z{2} F{3}\n".format(startX,startY,0,moveSpeed)) # start at near left corner of copper!
  dataFile.write('M106') # turn on paste
  dataFile.write("G1 X{0} Y{1} Z{2} F{3}\n".format(0,startLength,0,startSpeed)) # slow start
  y = boxY - startLength + catEarAdjacent * catEar
  dataFile.write("G1 X{0} Y{1} Z{2} F{3}\n".format(0,y,0,printSpeed)) # do the left Y run
  y = catEarAdjacent * catEar # return from catear
  dataFile.write("G1 X{0} Y{1} Z{2} F{3}\n".format(catEarOpposite,-1 * y,0,printSpeed)) # left part of X
  x = boxX - (2 * catEarOpposite)
  dataFile.write("G1 X{0} Y{1} Z{2} F{3}\n".format(x,0,0,printSpeed)) # straight X part
  y = catEarAdjacent * catEar # catear
  dataFile.write("G1 X{0} Y{1} Z{2} F{3}\n".format(catEarOpposite,y,0,printSpeed)) # right part of X
  y = boxY - endLength + catEarAdjacent * catEar
  dataFile.write("G1 X{0} Y{1} Z{2} F{3}\n".format(0,-1 * y,0,printSpeed)) # do the right -Y run
  dataFile.write('M107') # turn off paste
  dataFile.write("G1 X{0} Y{1} Z{2} F{3}\n".format(0,-1 * endLength,0,printSpeed)) # finish up with paste off
  dataFile.write("G1 X{0} Y{1} Z{2} F{3}\n".format(0,0,zLift,printSpeed)) # finish up with paste off
  x = boxX + startX
  dataFile.write("G1 X{0} Y{1} Z{2} F{3}\n".format(-1 * x,-1 * startY,-1 * zLift,moveSpeed)) # start at home
