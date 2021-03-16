# Program 2 : Print anagrams together in Python using List and Dictionary

def anag(input):  
      
    dict = {}  
  
    for strvalue in input:  
          
        key = ''.join(sorted(strvalue))  
          

        if key in dict.keys():  
            dict[key].append(strvalue)  
        else:  
            dict[key] = []  
            dict[key].append(strvalue)  
  
 
    output = ""  
    for key,value in dict.items():  
        output = output + ' '.join(value) + ' '
  
    return output  
    
if __name__ == "__main__":  
    input=['aatif', 'avdhoot', 'anjali', 'chandrakant', 'Chetan']  
    print (anag(input))