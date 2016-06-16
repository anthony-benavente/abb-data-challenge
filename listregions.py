import pandas as pd

def main():
    df = pd.read_csv(r'data\\SurveyData_Text_Cleaned.csv')
    print "Read in the csv file"

if __name__=='__main__':
    main()