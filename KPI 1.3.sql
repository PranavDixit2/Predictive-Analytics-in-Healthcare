SELECT i.subject_id,i.diagnosis,L.itemid,L.valuenum,L.valueuom,L.flag,i.diagnosis , c.itemid, c.valuenum, c.valueuom
FROM ADMISSIONS AS i
JOIN LABEVENTS AS L ON i.subject_id = L.subject_id
left join CHARTEVENTS c on i.subject_id = c.subject_id;