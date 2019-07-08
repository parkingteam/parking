import csv
import matplotlib.pyplot as plt
from bs4 import BeautifulSoup
from pylab import savefig

class large_popul:
    #DATASET
    reader = csv.reader(open('../../data/large_popul.csv','r'),delimiter=",")
    print(reader)
    #SVG MAP
    svg = open('../../data/Seoul_map.svg','r').read()
    
    people_count = {} # Dict
    counts_only = [] # List
    labels = [] # List
    num = [] # List
    min_value = 261973; max_value = 1125911; past_header = False
    
    # SCV FILE 한줄씩 읽어들기
    for row in reader:
        if not past_header:
            past_header = True
            continue
        
        try:
            unique = row[0]
            count = float(row[1].strip())
            people_count[unique] = count
            counts_only.append(count)
            
        except:
            pass
        
    # Beautiful Load
    soup = BeautifulSoup(svg, "html.parser")
    
    # 구를 식별할 path 데이터 찾기
    paths = soup.findAll('path')
    
    # 지도시각화에 사용할 색상 설정
    colors = ["#f7faff", "#c2d3ff", "#9fadd4", "#7c87a6", "#606982", "#404657", "#252933"]
    
    # 지도에 나타낼 스타일 설정
    path_style = 'font-size:12px;fill-rule:nonzero;stroke:#849fe3;stroke-opacity:1;stroke-width:0.1;stroke-miterlimit:4;stroke-dasharray:none;stroke-linecap:butt;marker-start:none;stroke-linejoin:bevel;fill:'
    
    # 노인 여가 시설의 수에 따른 구 별 색상 부여
    for p in paths:
        if p['id']:
            try:
                count = people_count[p['id']]
            except:
                continue
            
            # 색상 부여 값 범위
            if count > 1100000:
                color_class = 6
            elif count > 970144:
                color_class = 5
            elif count > 814378:
                color_class = 4
            elif count > 658000:
                color_class = 3
            elif count > 502846:
                color_class = 2
            elif count > 382409:
                color_class = 1
            else:
                color_class = 0    
    
            color = colors[color_class]
            p['style'] = path_style + color
            labels += [p['id']]
            num += [count]
            
    # 보기 좋게 도넛 자료로 변환.
    import numpy as np
    from wordcloud import WordCloud
    from matplotlib import font_manager, rc
    from matplotlib import style
    
    #convert it to dictionary with values and its occurences
    from collections import Counter
    
    word_could_dict=Counter(people_count)
    wordcloud = WordCloud(width = 1000, height = 500).generate_from_frequencies(word_could_dict)
    
    plt.figure(figsize=(15,8))
    plt.imshow(wordcloud)
    plt.axis("off")
    #plt.show()
    plt.savefig('../../img/word_large.png', bbox_inches='tight')
    plt.close()
    
    # SVG로 저장
    f = open('../result/large_popul.svg', 'w')
    f.write(soup.prettify())
    print('완료')
    
    
if __name__ == '__main__':
    large_popul
    
