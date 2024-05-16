SELECT i.subject_id,i.diagnosis,L.itemid,L.valuenum,L.valueuom,L.flag,i.diagnosis, d.label
FROM ADMISSIONS AS i
JOIN LABEVENTS AS L ON i.subject_id = L.subject_id
left join D_LABITEMS d on L.itemid = d.itemid
where L.itemid in ( 51300,
51256,
51116,
51277,
51265,
51214,
50862,
50889,
50963,
51002,
51003)
AND i.diagnosis in ( 'MITRAL REGURGITATION;CORONARY ARTERY DISEASE\CORONARY ARTERY BYPASS GRAFT WITH MVR  ? MITRAL VALVE REPLACEMENT /SDA','BRADYCARDIA','CHEST PAIN','CHEST PAIN/ CATH','CONGESTIVE HEART FAILURE','CORONARY ARTERY DISEASE\CORONARY ARTERY BYPASS GRAFT /SDA','CRITICAL AORTIC STENOSIS/HYPOTENSION','INFERIOR MYOCARDIAL INFARCTION\CATH','MI CHF','UNSTABLE ANGINA','VF ARREST');