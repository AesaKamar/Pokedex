# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# http://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class PokescraperItem(scrapy.Item):
    # define the fields for your item here like:
    number = scrapy.Field()
    name = scrapy.Field()
    type1 = scrapy.Field()
    type2 = scrapy.Field()
    hp = scrapy.Field()
    atk = scrapy.Field()
    dfn = scrapy.Field()
    spatk = scrapy.Field()
    spdef = scrapy.Field()
    spe = scrapy.Field()
