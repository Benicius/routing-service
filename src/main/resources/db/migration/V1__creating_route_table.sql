CREATE TABLE location (
  id SERIAL PRIMARY KEY,
  target VARCHAR(255) NOT NULL
);

INSERT INTO location (id, target, ) VALUES
  (1, 'AIR_001'),
  (2, 'AIR_002'),
  (3, 'AIR_003'),
  (4, 'AIR_004'),
  (5, 'AIR_005'),
  (6, 'AIR_006'),
  (7, 'AIR_007'),
  (8, 'AIR_008'),
  (9, 'AIR_009'),
  (10, 'AIR_010'),
  (11, 'AIR_011'),
  (12, 'AIR_012'),
  (13, 'AIR_013'),
  (14, 'AIR_014'),
  (15, 'AIR_015'),
  (16, 'AIR_016'),
  (17, 'AIR_017'),
  (18, 'AIR_018'),
  (19, 'AIR_019'),
  (20, 'AIR_020')
  (21, 'AIR_021')
  (22, 'AIR_022')
  (23, 'AIR_023')
  (24, 'AIR_024')
  (25, 'AIR_025')
  (26, 'AIR_026')
  (27, 'AIR_027')
  (28, 'AIR_028')
  (29, 'AIR_029');


CREATE TABLE route (
  id SERIAL PRIMARY KEY,
  target_type VARCHAR(255) NOT NULL
);

INSERT INTO route (id, target_type) VALUES
  (1, 'NATIONAL-SOUTH'),
  (2, 'NATIONAL-NORTH'),
  (3, 'INTERNATIONAL-SOUTH'),
  (4, 'INTERNATIONAL-NORTH');

CREATE TABLE route_details (
  id SERIAL PRIMARY KEY,
  source_location VARCHAR(255) NOT NULL,
  next_location VARCHAR(255) NOT NULL,
  route_id INT,
  priority VARCHAR(255) NOT NULL
);

INSERT INTO route_details (id, source_location, next_location, route_id, priority) VALUES
  (1, 'AIR_001', 'AIR_003', NULL, 'DEFAULT'),
  (2, 'AIR_003', 'AIR_004', 2, 'NORTH'),
  (2, 'AIR_003', 'AIR_005', NULL, 'DEFAULT'),
  (3, 'AIR_005', 'AIR_007', NULL, 'DEFAULT'),
  (4, 'AIR_007', 'AIR_020', 3, 'INTERNATIONAL_SOUTH'),
  (5, 'AIR_007', 'AIR_017', NULL, 'DEFAULT'),
  (5, 'AIR_007', 'AIR_009', 1, 'NORTH'),
  (6, 'AIR_017', 'AIR_018', 2, 'NATIONAL_SOUTH'),
  (7, 'AIR_017', 'AIR_019', 1, 'INTERNATIONAL_NORTH'),
  (8, 'AIR_018', 'AIR_021', NULL, 'DEFAULT'),
  (8, 'AIR_019', 'AIR_022', NULL, 'DEFAULT'),
  (8, 'AIR_009', 'AIR_011', NULL, 'DEFAULT'),
  (8, 'AIR_011', 'AIR_012', 2, 'INTERNATIONAL_SOUTH'),
  (8, 'AIR_011', 'AIR_013', 2, 'NATIONAL_NORTH'),
  (8, 'AIR_012', 'AIR_023', NULL, 'DEFAULT'),
  (8, 'AIR_013', 'AIR_024', NULL, 'DEFAULT');