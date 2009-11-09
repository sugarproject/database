CREATE TABLE state (state_id           SERIAL PRIMARY KEY,
                    state_name         TEXT,
                    state_abbr         TEXT,
                    state_country_id   INTEGER REFERENCES country(country_id));
GRANT ALL ON TABLE state TO xtrole;
GRANT ALL ON SEQUENCE state_state_id_seq TO xtrole;

ALTER TABLE state ADD UNIQUE (state_country_id, state_name);

COMMENT ON TABLE state IS 'List of states, provinces, and territories associated with various countries.';

INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Alabama', 'AL', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Alaska', 'AK', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'American Samoa', 'AS', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Arizona', 'AZ', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Arkansas', 'AR', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'California', 'CA', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Colorado', 'CO', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Connecticut', 'CT', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Delaware', 'DE', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'District Of Columbia', 'DC', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Federated States Of Micronesia', 'FM', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Florida', 'FL', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Georgia', 'GA', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Guam', 'GU', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Hawaii', 'HI', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Idaho', 'ID', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Illinois', 'IL', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Indiana', 'IN', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Iowa', 'IA', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Kansas', 'KS', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Kentucky', 'KY', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Louisiana', 'LA', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Maine', 'ME', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Marshall Islands', 'MH', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Maryland', 'MD', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Massachusetts', 'MA', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Michigan', 'MI', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Minnesota', 'MN', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Mississippi', 'MS', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Missouri', 'MO', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Montana', 'MT', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Nebraska', 'NE', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Nevada', 'NV', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'New Hampshire', 'NH', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'New Jersey', 'NJ', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'New Mexico', 'NM', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'New York', 'NY', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'North Carolina', 'NC', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'North Dakota', 'ND', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Northern Mariana Islands', 'MP', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Ohio', 'OH', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Oklahoma', 'OK', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Oregon', 'OR', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Palau', 'PW', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Pennsylvania', 'PA', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Puerto Rico', 'PR', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Rhode Island', 'RI', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'South Carolina', 'SC', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'South Dakota', 'SD', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Tennessee', 'TN', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Texas', 'TX', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Utah', 'UT', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Vermont', 'VT', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Virgin Islands', 'VI', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Virginia', 'VA', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Washington', 'WA', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'West Virginia', 'WV', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Wisconsin', 'WI', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Wyoming', 'WY', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Armed Forces Africa, Canada, Europe, Middle East', 'AE', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Armed Forces Americas (except Canada)', 'AA', country_id FROM country WHERE country_name='United States';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Armed Forces Pacific', 'AP', country_id FROM country WHERE country_name='United States';


INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Alberta', 'AB', country_id FROM country WHERE country_name='Canada';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'British Columbia', 'BC', country_id FROM country WHERE country_name='Canada';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Manitoba', 'MB', country_id FROM country WHERE country_name='Canada';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'New Brunswick', 'NB', country_id FROM country WHERE country_name='Canada';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Newfoundland and Labrador', 'NL', country_id FROM country WHERE country_name='Canada';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Northwest Territories', 'NT', country_id FROM country WHERE country_name='Canada';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Nova Scotia', 'NS', country_id FROM country WHERE country_name='Canada';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Nunavut', 'NU', country_id FROM country WHERE country_name='Canada';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Ontario', 'ON', country_id FROM country WHERE country_name='Canada';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Prince Edward Island', 'PE', country_id FROM country WHERE country_name='Canada';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Quebec', 'QC', country_id FROM country WHERE country_name='Canada';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Saskatchewan', 'SK', country_id FROM country WHERE country_name='Canada';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Yukon', 'YT', country_id FROM country WHERE country_name='Canada';

INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Aguascalientes', 'AGS', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Baja California', 'BC', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Baja California Sur', 'BCS', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Campeche', 'CAM', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Coahuila', 'COAH', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Colima', 'COL', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Chiapas', 'CHIS', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Chihuahua', 'CHIH', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Distrito Federal', 'DF', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Durango', 'DGO', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Guanajuato', 'GTO', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Guerrero', 'GRO', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Hidalgo', 'HGO', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Jalisco', 'JAL', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Mexico', 'MEX', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Michoacan', 'MICH', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Morelos', 'MOR', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Nayarit', 'NAY', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Nuevo Leon', 'NL', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Oaxaca', 'OAX', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Puebla', 'PUE', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Queretaro', 'QRO', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Quintana Roo', 'Q ROO', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'San Luis Potosi', 'SLP', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Sinaloa', 'SIN', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Sonora', 'SON', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Tabasco', 'TAB', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Tamaulipas', 'TAMPS', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Tlaxcala', 'TLAX', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Veracruz', 'VER', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Yucatan', 'YUC', country_id from country where country_name='Mexico';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Zacatecas', 'ZAC', country_id from country where country_name='Mexico';

INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Australian Capital Territory', 'ACT', country_id from country where country_name='Australia';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'New South Wales', 'NSW', country_id from country where country_name='Australia';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Northern Territory', 'NT', country_id from country where country_name='Australia';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Queensland', 'QLD', country_id from country where country_name='Australia';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'South Australia', 'SA', country_id from country where country_name='Australia';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Tasmania', 'TAS', country_id from country where country_name='Australia';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Victoria', 'VIC', country_id from country where country_name='Australia';
INSERT INTO state (state_name, state_abbr, state_country_id) SELECT 'Western Australia', 'WA', country_id from country where country_name='Australia';