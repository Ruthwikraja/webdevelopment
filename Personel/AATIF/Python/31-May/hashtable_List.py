class HashMap:
        def __init__(self):
                self.size = 6
                self.map = [None] * self.size
		
        def _get_hash(self, key):
                hash = 0
                for char in str(key):
                        hash += ord(char)
                return hash % self.size
		
        def add(self, key, value):
                key_hash = self._get_hash(key)
                key_value = [key, value]
		
                if self.map[key_hash] is None:
                        self.map[key_hash] = list([key_value])
                        return True
                else:
                        for pair in self.map[key_hash]:
                                if pair[0] == key:
                                        pair[1] = value
                                        return True
                        self.map[key_hash].append(key_value)
                        return True
			
        def get(self, key):
                key_hash = self._get_hash(key)
                if self.map[key_hash] is not None:
                        for pair in self.map[key_hash]:
                                if pair[0] == key:
                                        return pair[1]
                return None
			
        def delete(self, key):
                key_hash = self._get_hash(key)
		
                if self.map[key_hash] is None:
                        return False
                for i in range (0, len(self.map[key_hash])):
                        if self.map[key_hash][i][0] == key:
                                self.map[key_hash].pop(i)
                                return True
                return False
	
        def keys(self):
                arr = []
                for i in range(0, len(self.map)):
                        if self.map[i]:
                                arr.append(self.map[i][0])
                return arr
			
        def print(self):
                print('\n---PHONEBOOK----')
                for item in self.map:
                        if item is not None:
                                print(str(item))
			
h = HashMap()
h.add('Aatif', '987654321')
h.add('Avdhooth', '8765543219')
h.add('Avdhooth', '765432101')
h.add('Chandrakar', '654321789')
h.add('Anjali', '543216789')
h.add('Chetan', '432156789')
h.add('Akshay', '321456789')
h.add('Anjali', '213456789')
h.print()		
h.delete('Aatif')
h.print()
print('\nAvdhooth: ' + h.get('Avdhooth'))
print(h.keys())