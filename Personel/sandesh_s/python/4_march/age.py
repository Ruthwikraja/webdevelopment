#function for convert age to date

import datetime
def age() :

    birth_date = datetime.date(1998, 7, 9)

    end_date = datetime.date(2021, 4, 4)

    time_difference = end_date - birth_date

    age = time_difference.days


    print("Converted age in days:",age)
age()
