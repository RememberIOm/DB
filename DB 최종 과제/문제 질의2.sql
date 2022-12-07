select r.topic, group_concat(r.related_topic) as related_topic
from related_topic_list as r
group by r.topic