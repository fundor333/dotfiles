#!/usr/bin/env python
from pathlib import Path
import os
from pprint import pprint

with open( os.path.join(str(Path.home()), ".ssh", "config") , "r") as file:
  dataset = {}
  last_host = ""
  for line in file.readlines():
    if line !="\n ":
      raw = line.replace("  ", "").replace("\n", "")
      option = raw.split(" ")[0]
      data = " ".join(raw.split(" ")[1:])
      if option == "Host":
        last_host = data
        dataset[last_host]={}
      else:
        if option != '':
          dataset[last_host][option]=data
  new_dataset = {}
  for key in dataset.keys():
    if " " in key:
      copy = dataset[key]
      for e in key.split():
        new_dataset[e]= copy
    else:
      new_dataset[key] = dataset[key]
  pprint(new_dataset)


