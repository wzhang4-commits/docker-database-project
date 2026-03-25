-- Insert departments
INSERT INTO departments (department_name) VALUES
('Campus Center'),
('UMBC Police'),
('Residential Life'),
('Facilities Management');

-- Insert locations
INSERT INTO locations (location_name, department_id) VALUES
('Commons Front Desk', 1),
('Police Office', 2),
('Patapsco Hall Desk', 3),
('Retriever Learning Center', 4);

-- Insert users
INSERT INTO users (full_name, email, role, duo_authenticated, department_id) VALUES
('Wilson Zhang', 'wzhang4@umbc.edu', 'student', TRUE, 1),
('Campus Center Staff', 'staff1@umbc.edu', 'staff', TRUE, 1),
('Police Officer', 'officer1@umbc.edu', 'police', TRUE, 2),
('Dorm Staff', 'dormstaff1@umbc.edu', 'staff', TRUE, 3);

-- Insert lost reports
INSERT INTO lost_reports
(user_id, item_name, description, category, color, date_lost, location_id, contact_info, status)
VALUES
(1, 'Water Bottle', 'Blue Hydro Flask lost near the Commons', 'Bottle', 'Blue', '2026-03-10', 1, 'wzhang4@umbc.edu', 'lost'),
(1, 'Student ID Card', 'UMBC student ID lost near library entrance', 'ID Card', 'White', '2026-03-11', 4, 'wzhang4@umbc.edu', 'lost');

-- Insert found items
INSERT INTO found_items
(logged_by_user_id, item_name, description, category, color, date_found, location_id, status, high_value_flag, retention_days)
VALUES
(2, 'Water Bottle', 'Blue metal bottle found at Commons desk', 'Bottle', 'Blue', '2026-03-11', 1, 'found', FALSE, 30),
(3, 'Student ID Card', 'UMBC ID card turned in to campus police', 'ID Card', 'White', '2026-03-12', 2, 'found', TRUE, 395);

-- Insert matches
INSERT INTO matches
(lost_report_id, found_item_id, match_score, reviewed_by_user_id, match_status)
VALUES
(1, 1, 92.50, 2, 'confirmed'),
(2, 2, 97.00, 3, 'confirmed');

-- Insert claims
INSERT INTO claims
(match_id, claimed_by_user_id, verified_by_user_id, proof_notes)
VALUES
(1, 1, 2, 'Student showed campus ID and described the bottle correctly');