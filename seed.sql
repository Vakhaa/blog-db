.import --csv 1.authors.csv temp

INSERT INTO "authors"("name","email","password")
SElECT * FROM "temp";

DROP TABLE "temp";

.import --csv 2.categories.csv temp

INSERT INTO "categories"("name")
SElECT "name" FROM "temp";

DROP TABLE "temp";

.import --csv 3.posts.csv temp

INSERT INTO "posts"("title", "content", "author_id", "category_id")
SElECT * FROM "temp";

DROP TABLE "temp";

.import --csv 4.comments.csv temp

INSERT INTO "comments"("post_id" , "author_id", "text")
SElECT * FROM "temp";

DROP TABLE "temp";