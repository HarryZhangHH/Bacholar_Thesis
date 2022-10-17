import time,random,requests,json,os,re,pymysql
from time import sleep
from urllib import request
from selenium import webdriver
from bs4 import BeautifulSoup
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities
from selenium.webdriver.common.proxy import ProxyType
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.wait import WebDriverWait
 
 
desired_capabilities = DesiredCapabilities.PHANTOMJS.copy()
# 从USER_AGENTS列表中随机选一个浏览器头，伪装浏览器
desired_capabilities["phantomjs.page.settings.userAgent"] = (random.choice(['Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0',
                                                                          'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:6.0) Gecko/20100101 Firefox/6.0',
                                                                          'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/14.0.835.163 Safari/535.1',
                                                                          'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/534.50 (KHTML, like Gecko) Version/5.1 Safari/53',
                                                                           "(KHTML, like Gecko) Chrome/22.0.1207.1 Safari/537.1",
        "Mozilla/5.0 (X11; CrOS i686 2268.111.0) AppleWebKit/536.11 "
        "(KHTML, like Gecko) Chrome/20.0.1132.57 Safari/536.11",
        "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.6 "
        "(KHTML, like Gecko) Chrome/20.0.1092.0 Safari/536.6",
        "Mozilla/5.0 (Windows NT 6.2) AppleWebKit/536.6 "
        "(KHTML, like Gecko) Chrome/20.0.1090.0 Safari/536.6",
        "Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.1 "
        "(KHTML, like Gecko) Chrome/19.77.34.5 Safari/537.1",
        "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/536.5 "
        "(KHTML, like Gecko) Chrome/19.0.1084.9 Safari/536.5",
        "Mozilla/5.0 (Windows NT 6.0) AppleWebKit/536.5 "
        "(KHTML, like Gecko) Chrome/19.0.1084.36 Safari/536.5",
        "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.3 "
        "(KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3",
        "Mozilla/5.0 (Windows NT 5.1) AppleWebKit/536.3 "
        "(KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3",
        "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/536.3 "
        "(KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3",
        "Mozilla/5.0 (Windows NT 6.2) AppleWebKit/536.3 "
        "(KHTML, like Gecko) Chrome/19.0.1062.0 Safari/536.3",
        "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.3 "
        "(KHTML, like Gecko) Chrome/19.0.1062.0 Safari/536.3",
        "Mozilla/5.0 (Windows NT 6.2) AppleWebKit/536.3 "
        "(KHTML, like Gecko) Chrome/19.0.1061.1 Safari/536.3",
        "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.3 "
        "(KHTML, like Gecko) Chrome/19.0.1061.1 Safari/536.3",
        "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/536.3 "
        "(KHTML, like Gecko) Chrome/19.0.1061.1 Safari/536.3",
        "Mozilla/5.0 (Windows NT 6.2) AppleWebKit/536.3 "
        "(KHTML, like Gecko) Chrome/19.0.1061.0 Safari/536.3",
        "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/535.24 "
        "(KHTML, like Gecko) Chrome/19.0.1055.1 Safari/535.24",
        "Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/535.24 "
        "(KHTML, like Gecko) Chrome/19.0.1055.1 Safari/535.24"]))
 
# 不载入图片，爬页面速度会快很多
desired_capabilities["phantomjs.page.settings.loadImages"] = False
service_args = []
service_args.append('--load-images=no')
service_args.append('--disk-cache=yes')
service_args.append('--ignore-ssl-errors=true')
# 利用DesiredCapabilities(代理设置)参数值，重新打开一个sessionId，我看意思就相当于浏览器清空缓存后，加上代理重新访问一次url
# proxy = webdriver.Proxy()
# proxy.proxy_type = ProxyType.MANUAL
# proxy.http_proxy = random.choice('ip池')
# proxy.add_to_capabilities(desired_capabilities)
# phantomjs_driver = 'phantomjs.exe'
# 打开带配置信息的phantomJS浏览器
driver = webdriver.PhantomJS(desired_capabilities=desired_capabilities,service_args=service_args)
driver.start_session(desired_capabilities)
driver_item = webdriver.Firefox()
driver_price = webdriver.Firefox()
driver_detail = webdriver.PhantomJS(desired_capabilities=desired_capabilities,service_args=service_args)
driver_detail.start_session(desired_capabilities)
driver_detail.implicitly_wait(10)
wait = WebDriverWait(driver_item, 10)

db = pymysql.connect(host='localhost',user='root',password='123',database='final_project_test')
cursor = db.cursor()
try:
    cursor.execute('create table category(id int primary key not null,name varchar(255) not null)')
except:
    print('Database category exists')
try:
    cursor.execute('create table product(id int primary key not null,sku bigint(22) not null,name varchar(255) not null,sub_title varchar(255),original_price float,promote_price float,stock int,cid int,create_date date,update_time date,detail varchar(510))')
except:
    print('Database product exists')
try:
    cursor.execute('create table productimage(id bigint(22) primary key not null, pid int not null, type varchar(255) not null)')
except:
    print('Database productimage exists')
try:
    cursor.execute('create table property(id int primary key not null, name varchar(255) not null, cid int not null)')
except:
    print('Database property exists')
try:
    cursor.execute('create table propertyvalue(id int primary key not null, pid int not null, ptid int not null, value varchar(255) not null)')
except:
    print('Database propertyvalue exists')

def start_crawl():
    fr = open(r'C:\Users\thinkpad\IdeaProjects\springboot\crawl\url.txt')
    url = ''
    for line in fr.readlines():
        url += line.strip()
    print(url)
#     url = "https://mall.jd.com/view_search-911752-0-99-1-24-1.html"
#     url = "https://mall.jd.com/view_search-1364269-0-99-1-24-1.html"
    driver.implicitly_wait(3)
    driver.get(url)
    driver_item.get(url)
    # 将加载好的页面源码给bs4解析
    soup = BeautifulSoup(driver.page_source,"html.parser")
    return soup
    
def get_total_page(soup):
    pageNum = int(soup.select('span.fp-text > i')[0].text.strip())
#     print(pageNum)
    return pageNum;
    
# 模拟下滑到底部操作
# for i in range(1,5):
#     js = "var q=document.documentElement.scrollTop=10000"
#     driver.execute_script(js)
#     driver.execute("window.scrollTo(0,document.body.scrollHeight)")
#     driver.execute_script("window.scrowllTo(0, document.body.scrollHeight);")
#     time.sleep(9)

def crawl_next_page(pageNum):
    soups = []
    for i in range(1,pageNum):
        wait.until(lambda driver: driver.find_element_by_xpath(f"//div[@class='jPage']/a[{str(pageNum+1)}]"))
        driver_item.find_element_by_xpath(f"//div[@class='jPage']/a[{str(pageNum+1)}]").click()
        print("success")
        soup = BeautifulSoup(driver_item.page_source,"html.parser")
        soups.append(soup)
    return soups
#     print(driver_item.page_source)

def parse_html(soup,i,j,k):
    # 进行信息的抽取（商品名称，价格）
    modules_info = soup.select(".j-module > .jOneLevelarea")
    for module_info in modules_info:
        cid = j
        module = module_info.select(".jTwoLevel a")[0].text.strip()
        properties = module_info.select(".jThreeLevel > ul > li")
        print("category id = " + str(cid))
        print("category name = " + module)
        #insert category into database
        category_query = "INSERT INTO category(id, name) VALUES (%s, %s)"
        category_values = (int(cid), module)
        cursor.execute(category_query,category_values)
        print("property number = " + str(len(properties)))
        properties_name=[]
        if(len(properties)>=1):
            for property_info in properties:
                # property_id
                pid = k
                # property_title
                property_ = property_info.select("a")[0].text.strip()
                properties_name.append(property_)
                print("propert id = " + str(pid))
                print("property name = " + property_)
                k+=1
                #insert property into database
                property_query = "INSERT INTO property(id, name, cid) VALUES (%s, %s, %s)"
                property_values = (int(pid), property_, int(cid))
                cursor.execute(property_query,property_values)

                # To click and extract property goods 
#                 wait2.until(lambda driver: driver.find_element_by_link_text(property_))
#                 driver_property.find_element_by_link_text(property_).click()
#                 soup_property = BeautifulSoup(driver_property.page_source,"html.parser")
#                 i = parse_goods_html(soup_property,i,cid,property_)
#                 pageNum_property = get_total_page(soup_property)
#                 if(pageNum_property!=1):
#                     soups = crawl_next_page(pageNum_property)
#                     for in_soup in soups:
#                         i = parse_goods_html(in_soup,i,cid,property_)
#                 else:
#                     pass
        print(properties_name)
        try:
            wait.until(lambda driver: driver.find_element_by_link_text(module))
            driver_item.find_element_by_link_text(module).click()
        except:
            sleep(1)
            driver.refresh
            driver_item.find_element_by_link_text(module).click()
        
        soup_module = BeautifulSoup(driver_item.page_source,"html.parser")
        i = parse_goods_html(soup_module,i,cid,module,properties_name)
        pageNum_module = get_total_page(soup_module)
        if(pageNum_module!=1):
            soups = crawl_next_page(pageNum_module)
            for in_soup in soups:
                i = parse_goods_html(in_soup,i,cid,module,properties_name)
        j+=1
        
        
def parse_goods_html(soup,i,cid,module,properties_name):
    goods_info = soup.select(".gl-item")
    for info in goods_info:
        id_ = i
        sku = int(info.select(".jdNum")[0].get('jdprice'))
        print(sku)
        title = info.select(".jDesc a")[0].text.strip()
        
        #extract image
        src = info.select(".jPic > a > img")[0].get('src')
        img_url = auto_completion(src)
        file_path = "C:/Users/thinkpad/IdeaProjects/springboot/crawl/image/"
        image_path(file_path,img_url,id_)
        
        #insert image into database
        image_query = "INSERT INTO productimage(id, pid, type) VALUES (%s, %s, %s)"
        image_values = (int(id_), int(id_), 'single')
        cursor.execute(image_query,image_values)
            
        #extract detail
        url_detail = "http://item.jd.com/" + str(sku) + ".html"
        driver_detail.get(url_detail)
        soup_detail = BeautifulSoup(driver_detail.page_source,"html.parser")
        promote_price = soup_detail.select('.p-price > span')[1].text.strip()
        original_price,promote_price = parse_price(sku,promote_price)
        brand = soup_detail.select('ul#parameter-brand > li > a')[0].text.strip()
        good_detail_info = soup_detail.select('.p-parameter > .parameter2 > li')
        details=[]
        for detail_info in good_detail_info:
            detail = detail_info.text.strip()
            details.append(detail)
        detail = '    '.join(details)
        img_details = soup_detail.select('#J-detail-content > p > img')
        for img_detail in img_details:
            src_detail = img_detail.get('data-lazyload')
            img_detail_url = auto_completion(src_detail)
            file_path_detail = "C:/Users/thinkpad/IdeaProjects/springboot/crawl/imageDetail/"
            image_id = int(''.join(str(random.choice(range(10))) for _ in range(10))) 
            image_path(file_path_detail,img_detail_url,image_id)
            print(image_id)
            #insert image into database
            image_query = "INSERT INTO productimage(id, pid, type) VALUES (%s, %s, %s)"
            image_values = (int(image_id), int(id_), 'detail')
            cursor.execute(image_query,image_values)
        
        #define property and subtitle
        sub_title = ''
        if len(properties_name) == 0:
            sub_title = module
            print("subtitle = " + sub_title)
        else:
            for num, property_name in enumerate(properties_name):
                if property_name in title:
                    sub_title = properties_name[num]
                    print("subtitle = " + sub_title)
                    break
                else:
                    num_word = 0
                    list_ = list(property_name)
                    list_.append('健身')
                    for word in list(property_name):
                        if word in title:
                            num_word+=1
                    if num_word>=3:
                        sub_title = properties_name[num]
                        print("subtitle = " + properties_name[num])
                        break
                
        if len(sub_title) == 0:
            sub_title = module
            print("subtitle = " + sub_title)
                    
                    
        stock = random.randint(50,100)
        create_date = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())
        update_time = create_date
        i+=1
        print('product id='+str(id_))
        print(img_url)
        print(brand)
        print(title)
        print(original_price)   
        print(promote_price)
        print(detail)
        
        #insert products into database
        product_query = "INSERT INTO product(id, sku, name, sub_title, \
           original_price, promote_price, stock, cid, create_date, update_time, detail) \
           VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
        product_values = (int(id_), int(sku), title, sub_title, original_price, promote_price, stock, cid, create_date, update_time, detail)
        cursor.execute(product_query,product_values)
    return i 

#from json to extract data
def parse_price(sku,promote_price):
    try:
        url_price = "https://p.3.cn/prices/mgets?skuIds=J_" + str(sku)
        driver_price.get(url_price)
        html = driver_price.page_source
        soup_price = BeautifulSoup(html, 'html.parser')
        cc = soup_price.select('#json')[0].text.strip().strip('[]')
        jsonResult = json.loads(cc)
        original_price = jsonResult['op']
        promote_price = jsonResult['p']
    except:
        try:
            parse_price(sku,promote_price)
        except:
            original_price = promote_price
            print("vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv")
    return original_price,promote_price

def auto_completion(url):
    if re.match('http://|https://',url):
        return url
    elif re.match('//',url):
        return 'http:' + url
    
def image_path(file_path,img_url,id_):
    try:
        if not os.path.exists(file_path):
            os.makedirs(file_path)
            print(4444444444444444444444444)
        file_suffix = str(id_) + '.jpg'
        filename = '{}{}'.format(file_path,file_suffix)
        request.urlretrieve(img_url,filename=filename)
    except IOError as e:
        print(1,e)
    except Exception as e:
        print(2,e)

        
def start():
    i = 1
    j = 1
    k = 1
    soup = start_crawl()
    parse_html(soup,i,j,k)
#     pageNum = get_total_page(soup)
#     soups = crawl_next_page(pageNum)
#     for in_soup in soups:
#         i = parse_html(in_soup,i)

try:
    start()
except:
    db.commit()
db.commit()
# insert property_value into database
sql = "SELECT id, sub_title FROM product"
cursor.execute(sql)
r_all = cursor.fetchall()
product_tuple = 0
for product_tuple in r_all:
    product_id = product_tuple[0]
    product_sub_title = str(product_tuple[1])
    sql2 = "SELECT id, name FROM property WHERE name=%s"
    cursor.execute(sql2,product_sub_title)
    r_property_all = cursor.fetchall()
    for property_tuple in r_property_all:
        property_id = property_tuple[0]
        property_name = property_tuple[1]
        property_value_query = "INSERT INTO propertyvalue(id, pid, ptid, value) VALUES (%s, %s, %s, %s)"
        property_value_values = (int(product_id), int(property_id), int(product_id), property_name)
        cursor.execute(property_value_query,property_value_values)
db.commit()
cursor.close()
db.close()
fw = open(r'C:\Users\thinkpad\IdeaProjects\springboot\crawl\crawlResult.txt','w')
fw.write('Success!' + os.linesep)
driver.close()    
driver_item.close()
driver_detail.close()
