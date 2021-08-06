with
total_saves (id_product, number_of_saves) as
  (select product_saves.id_product, count(product_saves.id) from
    (select ppv.id_product, product_page_save.id from product_page_view as ppv
    left join (
      select ppa.id, ppa.id_page_view from product_page_action as ppa
      where ppa.type = 2) as product_page_save
    on product_page_save.id_page_view = ppv.id) as product_saves
  group by product_saves.id_product),

product_views (id_product, number_of_views) as
(
  select ppv.id_product, count(ppv.id) as number_of_views
  from product_page_view as ppv
  group by ppv.id_product
)

select ts.id_product, ts.number_of_saves, pv.number_of_views, cast(ts.number_of_saves as float)/cast(pv.number_of_views as float) as conversion
from total_saves as ts
left join product_views as pv on ts.id_product = pv.id_product;