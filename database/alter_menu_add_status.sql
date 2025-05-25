ALTER TABLE menu
ADD COLUMN status ENUM('available', 'not available') NOT NULL DEFAULT 'available';
