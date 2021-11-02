import csv
import json

path = './weapons.json'
with open(path, 'r', encoding='utf8' ) as f:
    src = json.load(f)
    jsondata = src["WEAPON"]

class data_separate:
    def __init__(self, jsonlist):
        self.jsonlist = jsonlist;        
        self.uniqueKeys = ''
        self.uniqueNames = []

    def get_all_data_list(self):
        return self.jsonlist    
    
        

    # получение всех ключей json
    def unicJsonKey(self):
        uniqueNames = []
        count = 0 
        for objects in self.jsonlist:
            if count < 1000:    #numbers object
                count += 1
                for iobjects in objects:
                    if count == 1:
                        uniqueNames.append(iobjects)
                    else:
                        if iobjects not in uniqueNames:
                            uniqueNames.append(iobjects)
        
        return tuple(uniqueNames)


    def values(self):

        # добавить сравнение по уникальным ключам(валидация данных)

        self.uniqueNames = self.unicJsonKey() 
        count = 0 
        v = []
        for objects in self.jsonlist:
            if count < 1000:    #numbers object
                count += 1
                # valueStr = ''
                valueStr = []

                for i in self.uniqueNames:
                    try:
                        valueStr.append(objects[i][0])
                        # valueStr += f"{''.join(map(str, objects[i]))}, "
                    except KeyError:
                        valueStr.append(0)
                v.append(valueStr) 
        return list(map(tuple, v)) 
    

if __name__ == '__main__':
    nu = data_separate(jsondata)
    
    b = nu.unicJsonKey()
    c = nu.values()
    # print(nu.get_all_data_list())
    # print(type(nu.get_all_data_list()))
    # print(a, type(a) )
    # print(b, len(b), type(b) )
    # print(c, len(c), type(c) )
    # print(len(c[1]))
    # print (list(map(len, c)))
    # ------------------------
    b = ', '.join(map(str, b))
    
    c = ', '.join(map(str, c))
    # print(b, type(b) )
    with open('keys.txt', 'w') as f:
        f.write(b)
    with open('values.txt', 'w') as f:
        f.write(c)
    # ---------------------------
    # print(c, len(c), type(c) )
    # c()
# def values():
#     valueStr = ''
#     for i in uniqueNames:
#             try:
#                 valueStr += f"{''.join(map(str, objects[i]))}, "
#             except KeyError:
#                 valueStr += f'"NULL", '
#     return f'{valueStr}\n'


# path = './weapons.json'
# with open(path, 'r', encoding='utf8' ) as f:
#     src = json.load(f)
#     jsondata = src["WEAPON"]
    
#     uniqueKeys = ''
#     uniqueNames = []
    
# # -----------------------------------
#     # получение всех ключей json
#     count = 0 
#     for objects in jsondata:
#         if count < 1000:    #numbers object
#             count += 1
#             for iobjects in objects:
#                 if count == 1:
#                     uniqueNames.append(iobjects)
#                 else:
#                     if iobjects not in uniqueNames:
#                         uniqueNames.append(iobjects)
#     # print(uniqueNames)
    

# # -----------------------------------
#     # получение строки из массива
#     count = 0
#     for i in uniqueNames:
#         count += 1
#         if count == len(uniqueNames):
#             uniqueKeys += f'{i}'
#         else:
#             uniqueKeys += f'{i}, '
#     with open('text.csv', 'w') as csvfile:
#         #     print(uniqueNames)
#         csvfile.write(f'{uniqueKeys}\n')

# # -----------------------------------
#     # получение всех значений
#     count = 0
#     # valueStr = ''
#     for objects in jsondata:
            
#         if count < 1000:
#             count += 1
#             with open ('text.csv', 'a') as txt:
#                 txt.write(values())
           

    ## 
    # НАЙТИ как csv экспортировать в Базу данных(соблюдая синтаксис, 
    # посмотреть на оф сайте как должны выглядеть данные для экспорта)
    
    ##
    
    
    # print(uniqueNames, len(uniqueNames))
    # print(count)
    