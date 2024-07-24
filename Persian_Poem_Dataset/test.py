fp = open('poem_ganjoor.txt', encoding="utf8")
data = fp.readlines()
list_clean_data = []

for i in range(len(data)):
    text = data[i]
    if 'دوبیتی' in text:
        continue
    if len(data) == i+1:
        break
    if text in data[i+1] or data[i+1] in text:
        print("replicate", text)
        continue
    list_clean_data.append(text)

fp = open('poem_ganj.txt','w', encoding="utf8")
fp.writelines(list_clean_data)
fp.close()