/*
  Warnings:

  - You are about to drop the `settings` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "settings" DROP CONSTRAINT "settings_userId_fkey";

-- DropTable
DROP TABLE "settings";

-- CreateTable
CREATE TABLE "settingsa" (
    "id" TEXT NOT NULL,
    "userId" TEXT,
    "theme" TEXT NOT NULL,
    "LikeCount" INTEGER NOT NULL,
    "commentCount" INTEGER NOT NULL,
    "AddNumber" BIGINT NOT NULL,
    "changeUserEmail" TEXT NOT NULL,

    CONSTRAINT "settingsa_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "settingsa" ADD CONSTRAINT "settingsa_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
