import scrapy

from pokescraper.items import PokescraperItem

class PokescraperSpider(scrapy.Spider):
    name = "Pokescraper"
    allowed_domains = ["http://pokemondb.net/"]
    start_urls = ["http://pokemondb.net/pokedex/all"]

    def parse(self, response):
        for sel in response.xpath('//tbody/tr'):
            item = PokescraperItem()
            item['name'] = sel.xpath('a/text()').extract()
            yield item
