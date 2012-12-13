select f.`name`, count(distinct()) 
from publications p, facets f, mappings m   
 where p.state = 'a'
   and f.id in (16,17,18,19)
   and m.publication_id = p.id 
   and m.facet_id = f.id
group by f.name   


select count(p.id)
from publications p inner join mappings m on m.publication_id = p.id 
where p.state = 'a'
  and m.facet_id = 17 
  and p.id not in (select m2.publication_id 
  				 from mappings m2 
  				 where m2.`facet_id` in (16,18,19))


select p.id, p.title, p.`marked`
from publications p inner join mappings m on m.publication_id = p.id 
 where p.state = 'a'
  and m.facet_id = 17 
  and p.`marked` = 1
  and p.id  in (select m2.publication_id 
  				 from mappings m2 
  				 where m2.`facet_id` in ( 18)) 



