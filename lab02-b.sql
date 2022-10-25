ALTER TABLE soft ADD CONSTRAINT pk_soft_id PRIMARY KEY (id);
ALTER TABLE pcs ADD CONSTRAINT pk_pcs_id PRIMARY KEY (id);
ALTER TABLE devices ADD CONSTRAINT pk_devices_id PRIMARY KEY (id);
ALTER TABLE rooms ADD CONSTRAINT pk_rooms_id PRIMARY KEY (id);
ALTER TABLE employees ADD CONSTRAINT pk_employees_id PRIMARY KEY (id);

ALTER TABLE installs ADD CONSTRAINT fk_install_soft_id FOREIGN KEY (soft_id) REFERENCES soft;
ALTER TABLE installs ADD CONSTRAINT fk_install_pc_id FOREIGN KEY (pc_id) REFERENCES pcs;
ALTER TABLE pcs ADD CONSTRAINT fk_pcs_room_id FOREIGN KEY (room_id) REFERENCES rooms;
ALTER TABLE pcs ADD CONSTRAINT fk_pcs_device_id FOREIGN KEY (device_id) REFERENCES devices;
ALTER TABLE rooms ADD CONSTRAINT fk_rooms_emp_id FOREIGN KEY (emp_id) REFERENCES employees;
