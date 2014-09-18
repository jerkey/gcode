copperX = 12.5 # start on near left corner (lowest X and Y)
boxX = 3.65
boxY = 3.15

with open('boxpy.g','w') as dataFile:
  dataFile.write('G91 ; relative positioning\n')
  dataFile.write('M201 Y20 X20 ; set acceleration to 20\n')
  dataFile.write('G1 X-3.725 Y0.325 F2010\n') # start at near right corner of copper!
  dataFile.write("{0}: {1} = {2}".format(chr(i),macros[i]['name'],macros[i]['keys']))
  dataFile.write('')
  dataFile.write('')
  dataFile.write('')
  dataFile.write('')
  dataFile.write('')
  dataFile.write('')
  dataFile.write('')
  dataFile.write('')
  dataFile.write('')
  dataFile.write('')
  dataFile.write('')
  dataFile.write('')
