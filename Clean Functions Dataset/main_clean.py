import check
from utils import remove_tags, remove_nasr
from haraai_clean import General_normalization
import check
from hazm import Normalizer


characters = ['-' ,'_', '—', '؛', 'ء', '«', '»',')','(', '‏', ']', '[', '  ', '   ', '    ']

normalizer = Normalizer()
general = General_normalization()


def remove_characters(data, characters):
  for i in characters:
    data = data.replace(i, ' ')
  return data


def clean(list_lines, flag_tag=True, flag_nasr=True):
    list_clean = []
    if flag_tag:
       list_lines =  remove_tags(list_lines)

    if flag_nasr:
       list_lines, min, max = remove_nasr(list_lines)

    for data in list_lines:

        data = normalizer.normalize(data, )  # remove_specials_char, persian_style, seperate_mi, unicodes_replacement

        data = general.arabic_correction(data)

        data = general.semi_space_correction(data)

        data = general.space_between_punctuations_and_text(data)

        data = general.special_alphabet_correction(data)

        data = general.alphabet_correction(data)

        data = remove_characters(data, characters)

        data = normalizer.correct_spacing(data) # # اصلاح فاصله گذاری

        data = data.replace('\u200c', ' ') # حذف نیم فاصله

        output = general.remove_earab(data)

        list_clean.append(output)
    return list_clean