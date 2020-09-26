#!/usr/bin/python2.7
# coding: utf-8
from bs4 import BeautifulSoup
import requests
import sys

def get_page(prt):

    url = "https://check.torproject.org/"

    # set to use socks proxy
    proxy_dict = {

        'http': 'socks5://127.0.0.1:'+prt,
        'https': 'socks5://127.0.0.1:'+prt
    }

    html = ""

    try:
        html = requests.get(url, proxies=proxy_dict, timeout=10)
    except:
        try :
            html = requests.get(url, proxies=None ,timeout=10)
        except:
            html = 'servernone'

    return html

def scrape_page(page_html, prt):
    if page_html == 'servernone':
        return page_html

    result = ""

    soup = BeautifulSoup(page_html.text, 'html.parser')

    title = soup.title

    if "Congratulations" in str(title):
        result = get_tor_ip(get_page(prt))
    else:
        result = 'none'
    return result

def get_tor_ip(page_html):

    soup = BeautifulSoup(page_html.text, 'html.parser')
    tor_ip = soup.find('strong').getText()

    return tor_ip

if __name__ == "__main__":
    #prt = 9050
    prt = 9050
    if (len(sys.argv) != 0) :
        prt = sys.argv[-1]
    s = scrape_page(get_page(prt),prt)
    if (s == 'none'):
        #print ' '.decode('utf-8')
        #print "<span foreground=\"#FFFF00\">".decode('utf-8') + ' '.decode('utf-8')
        print('<span color="#FFFF00"><span font="FontAwesome"></span></span>')
    else:
        if (s=='servernone'):
            #print "<span foreground=\"#FF0000\">".decode('utf-8') +' '.decode('utf-8')
            print('<span color="#FF0000"><span font="FontAwesome"></span></span>')
        else:
            #print "<span foreground=\"#00FF00\">".decode('utf-8') +' '.decode('utf-8') + (s).decode('utf-8')
            print('<span color="#00FF00"><span font="FontAwesome">:{}</span></span>'.format(s))

#print('<span color="{}"><span font="FontAwesome">{}</span> {:>2}ºC</span>'.format(color(temp), icon(temp), temp))
