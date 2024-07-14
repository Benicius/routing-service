CREATE TABLE location (
  id SERIAL PRIMARY KEY,
  target VARCHAR(255) NOT NULL,
  priority VARCHAR(255) NOT NULL
);

INSERT INTO location (id, target, priority) VALUES
  (1, 'AIR_001', 'DEFAULT'),
  (2, 'AIR_002', 'DEFAULT'),
  (3, 'AIR_003', 'NORTH'),
  (4, 'AIR_004', 'SOUTH'),
  (5, 'AIR_005', 'DEFAULT'),
  (6, 'AIR_006', 'DEFAULT'),
  (7, 'AIR_007', 'NORTH'),
  (8, 'AIR_008', 'SOUTH'),
  (9, 'AIR_009', 'DEFAULT'),
  (10, 'AIR_010', 'DEFAULT'),
  (11, 'AIR_011', 'DEFAULT'),
  (12, 'AIR_012', 'DEFAULT'),
  (13, 'AIR_013', 'DEFAULT'),
  (14, 'AIR_014', 'DEFAULT'),
  (15, 'AIR_015', 'NORTH'),
  (16, 'AIR_016', 'SOUTH'),
  (17, 'AIR_017', 'DEFAULT'),
  (18, 'AIR_018', 'DEFAULT'),
  (19, 'AIR_019', 'DEFAULT'),
  (20, 'AIR_020', 'DEFAULT');


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
  route_id INT NOT NULL
);

INSERT INTO route_details (id, source_location, next_location, route_id) VALUES
  (1, 'AIR_001', 'AIR_003', 1),
  (2, 'AIR_002', 'AIR_004', 2),
  (3, 'AIR_003', 'AIR_005', 1),
  (4, 'AIR_004', 'AIR_006', 2),
  (5, 'AIR_005', 'AIR_007', 1),
  (6, 'AIR_006', 'AIR_008', 2),
  (7, 'AIR_007', 'AIR_009', 1),
  (8, 'AIR_008', 'AIR_010', 2);