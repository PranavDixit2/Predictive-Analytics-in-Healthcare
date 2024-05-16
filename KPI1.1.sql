SELECT *
FROM
    ICUSTAYS AS a
JOIN
    CHARTEVENTS AS c ON a.subject_id = c.subject_id AND a.hadm_id = c.hadm_id AND a.icustay_id = c.icustay_id
left JOIN D_ITEMS as d on c.itemid = d.itemid
WHERE
    c.itemid IN (
        -- Oxygen delivery types
        223835, 223836, 223837, 223838, 223839,
        -- Non-invasive ventilation
        223840,
        -- Invasive ventilation
        223841,
        -- Heart rate
        618,
        -- Diastolic blood pressure
        8441,
        -- Systolic blood pressure
        8440,
        -- Mean blood pressure
        456,
        -- Respiratory rate
        646,
        -- Body temperature
        223762,
        -- SpO2
        610
    )
;
    
