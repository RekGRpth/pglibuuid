CREATE EXTENSION libuuid;

-- Of course we can't check the actual values that are created, but
-- let's whack them around a little bit to see that they are coming
-- out valid.

CREATE TABLE uuid_test(a int, u uuid);

INSERT INTO uuid_test VALUES (1, uuid_generate()::text::uuid);
INSERT INTO uuid_test VALUES (2, uuid_generate_random()::text::uuid);
INSERT INTO uuid_test VALUES (3, uuid_generate_time()::text::uuid);
