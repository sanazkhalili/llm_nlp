import re

def check_numbers(data:list):
  for i in data:
    if re.search(r'\d', i):
      return True
  return False

def check_english_char(data:list):
  for i in data:
    if re.search(r'[a-zA-Z]', i):
      return True
  return False


def save_data(name, data):
  fp = open(name, 'w')
  fp.writelines(data)
  fp.close()
  

def check_special_charecter(data:list, character):
    for text in data:
      for i in character:
        if i in text:
          return True, i, text
    return False