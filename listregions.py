import pandas as pd
import json

def main():
    df = pd.read_csv(r'data\\SurveyData_Text_Cleaned.csv')
    countries = { }
    for index, row in df.iterrows():
        if index > 0:
            country = row['Q12.5']
            if country in countries:
                countries[country] += 1
            else:
                countries[country] = 1
    print json.dumps(countries)

if __name__=='__main__':
    main() 