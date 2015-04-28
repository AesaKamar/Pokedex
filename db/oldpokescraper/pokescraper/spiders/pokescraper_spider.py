import scrapy

from pokescraper.items import PokescraperItem

class PokescraperSpider(scrapy.Spider):
    name = "pokescraper"
    allowed_domains = ["http://pokemondb.net/"]
    start_urls = ["http://pokemondb.net/pokedex/all"]

    def parse(self, response):
        # for sel in response.xpath('/tbody/tr'):
        #     item = PokescraperItem()
        #     item['name'] = sel.xpath('a/text()').extract()
        #     yield item
        filename = response.url.split("/")[-2]
        with open(filename, 'wb') as f:
            f.write(response.body)
