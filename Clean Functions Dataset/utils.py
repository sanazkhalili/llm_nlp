# https://www.roshan-ai.ir/hazm/docs/content/hazm/index.html

from hazm import Normalizer
normalizer = Normalizer()


def clean_tags(list_tags, data):
  list_cleaned = []
  for row in data:
    for tag in list_tags:
      row = row.replace(tag, '')
    if len(row)!=0:
      list_cleaned.append(row)
  return list_cleaned


def clean_normal_data_hazm(i):
    i = normalizer.remove_specials_chars(i) # حذف کارکترهای خاص
    i = normalizer.persian_style(i) 
    i = normalizer.unicodes_replacement(i) 
    i = normalizer.seperate_mi(i) # جداسازی پیشوندهای فعل
    return i


def correct_space(data):
    data = normalizer.correct_spacing(data) # اصلاح فاصله گذاری
    return data


def remove_tags(lines):
  
    tags = ['<[SOFM]>' , '<[EOSM]>', '<[SOFM]>',
            '<[EOFMMBT]>','<[SOSMMBT]>','<[EOFM]>', '<[SOSM]>', '<[SOSM]>',
            '<[EOT]>','<[SOT]>', '<[SOFMMBT]>', '<[EOSMMBT]>']

    data_w_tags = []
    for i in lines:
      data = clean_tags(tags, [i])[0]  # حذف همه ی تگ ها
      if not data.isspace():
          data_w_tags.append(data)
    return data_w_tags


def remove_nasr(data_w_tags):
  i = 0
  list_poems = []
  len_data = []
  while i < len(data_w_tags):
    
    if '<[SON]>' in data_w_tags[i]:
      while not '<[EON]>' in data_w_tags[i]:
        i+=1
    else:
      list_poems.append(data_w_tags[i])
      len_data.append(len(data_w_tags[i]))

    i+=1
  return list_poems, min(len_data), max(len_data)
