CREATE TABLE `users` (
  `id` integer,
  `username` varchar(255),
  `cpf` integer PRIMARY KEY,
  `created_at` timestamp
);

CREATE TABLE `assuntos` (
  `id` integer PRIMARY KEY,
  `title` varchar(255),
  `body` text COMMENT 'Content of the post',
  `user_id` integer,
  `status` varchar(255),
  `created_at` timestamp
);

ALTER TABLE `assuntos` ADD FOREIGN KEY (`id`) REFERENCES `users` (`cpf`);
