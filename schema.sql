CREATE TABLE IF NOT EXISTS "posts" (
    "id" INTEGER UNIQUE,
    "title" TEXT,
    "content" TEXT NOT NULL,
    "author_id" INTEGER NOT NULL,
    "category_id" INTEGER NOT NULL,
    "created_at" NUMERIC DEFAULT CURRENT_TIMESTAMP,
    "updated_at" NUMERIC DEFAULT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("author_id") REFERENCES "authors"("id"),
    FOREIGN KEY("category_id") REFERENCES "categories"("id")
);

CREATE TABLE IF NOT EXISTS  "authors" (
    "id" INTEGER UNIQUE,
    "name" TEXT NOT NULL UNIQUE,
    "email" TEXT NOT NULL UNIQUE,
    "password" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS  "comments" (
    "id" INTEGER UNIQUE,
    "post_id" INTEGER NOT NULL,
    "author_id" INTEGER NOT NULL,
    "text" TEXT NOT NULL,
    "created_at" NUMERIC DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY("id"),
    FOREIGN KEY("post_id") REFERENCES "posts"("id"),
    FOREIGN KEY("author_id") REFERENCES "authors"("id")
);

CREATE TABLE IF NOT EXISTS  "categories" (
    "id" INTEGER UNIQUE,
    "name" TEXT NOT NULL UNIQUE,
    PRIMARY KEY("id")
);