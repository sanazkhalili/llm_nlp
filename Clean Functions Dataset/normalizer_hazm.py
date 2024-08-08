from hazm import Normalizer
normalizer = Normalizer()


def clean_tags(list_tags, data):
  list_cleaned = []
  for row in data:
    for tag in list_tags:
      row = row.replace(tag, '')
    if len(row)!=0:
      list_cleaned.append(row+'\n')
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

