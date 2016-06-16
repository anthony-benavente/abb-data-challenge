import pandas as pd

def main():
    df = pd.read_csv(r'data\\SurveyData_Text_Cleaned.csv')
    countries = { }
    for index, row in df.iterrows():
        country = row['Q12.5']
        if country in countries:
            countries[country] += 1
        else:
            countries[country] = 1
    print countries

if __name__=='__main__':
    main() 