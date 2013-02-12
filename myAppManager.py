# Purpose:     Script to extract the structural heirarchy of a Cube catalog
#              (from its .app files) into a pretty JSON format
# Author:      Abi Komma
# Created:     01/21/2013
#------------------------------------------------------------------------------

import re, os, sys
import json

_inputFileApp = './sampleCatalog/Parent.app'
_outputJSON = 'sampleCatalog.JSON'


def main():
    catch =readAppFile(_inputFileApp,None)
    jsonWriteFile(catch)
    #walkTree(catch)

class Node():
    def __init__(self):
        self.isRoot = False
        self.isSubGroup = False
        self.execOrder = 0
        self.groupName = ''
        self.progName = ''
        self.children = []

    def addChild(self, obj):
        self.children.append(obj)

class FileLineWrapper(object):
    def __init__(self, f):
        self.f = f
        self.line = 0
    def close(self):
        return self.f.close()
    def readline(self):
        self.line += 1
        return self.f.readline()

#recursively reads and .app File & creates the tree
def readAppFile(appFileName,ro):
    if ro is None:
        ro=Node()
        ro.isRoot, ro.isSubGroup = True, True
        ro.execOrder=1
        ro.groupName, ro.progName ='Parent', 'Parent'

    # Define the input & output files
    _finput = FileLineWrapper(open(appFileName, 'r'))

    # Search criteria
    keywords =['#PROGRAM?']
    pattern = re.compile('|'.join(keywords),re.IGNORECASE)

    #read line-by-line
    line=_finput.readline()
    while line:
        if pattern.search(line):
            child = Node() # Create an empty node of type Nodes

            #Record line 1,2
            _finput.readline()
            child.isSubGroup=bool(eval(_finput.readline().strip()))
            child.execOrder=_finput.readline().strip()
            #Skip 2 lines
            for i in range(1,2):
                _finput.readline()
            #Record line 5,6
            child.groupName=_finput.readline().strip()
            child.progName=_finput.readline().strip()
            ro.addChild(child)

            if(child.isSubGroup and child.groupName is not ''):
                readAppFile(child.groupName,child)
        line=_finput.readline()
    _finput.close()
    return ro

# function to walk the tree - for dbg
def walkTree(ro):
    if ro.isRoot:
        print 'Parent'
    else:
        print ro.progName, ro.isSubGroup, ro.execOrder
    for c in ro.children:
        walkTree(c)

#just function wrapper to call from main
def jsonWriteFile(obj):
    _foutput= open(_outputJSON, 'w')
    _foutput.write(jsonWrite(obj))
    _foutput.close()
    print 'The JSON file has been created for visualization...Enjoy!'

#code snippet borrowed to make custom objects serializable
def jsonWrite(obj):
## Represent instance of a class as JSON
##  Arguments:
##  obj -- any object
##  Return:
##  String that reprent JSON-encoded object.

  def serialize(obj):
##    Recursively walk object's hierarchy
    if isinstance(obj, (bool, int, long, float, basestring)):
      return obj
    elif isinstance(obj, dict):
      obj = obj.copy()
      for key in obj:
        obj[key] = serialize(obj[key])
      return obj
    elif isinstance(obj, list):
      return [serialize(item) for item in obj]
    elif isinstance(obj, tuple):
      return tuple(serialize([item for item in obj]))
    elif hasattr(obj, '__dict__'):
      return serialize(obj.__dict__)
    else:
      return repr(obj) # Don't know how to handle, convert to string
  return json.dumps(serialize(obj))


if __name__ == "__main__":
    sys.exit(main())

