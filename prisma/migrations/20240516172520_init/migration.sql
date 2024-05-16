-- CreateTable
CREATE TABLE "settings" (
    "id" TEXT NOT NULL,
    "userId" TEXT,
    "theme" TEXT NOT NULL,
    "LikeCount" INTEGER NOT NULL,
    "commentCount" INTEGER NOT NULL,
    "AddNumber" BIGINT NOT NULL,
    "changeUserEmail" TEXT NOT NULL,

    CONSTRAINT "settings_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "settings" ADD CONSTRAINT "settings_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
