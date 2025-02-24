/*
  Warnings:

  - You are about to drop the column `imageurl` on the `User` table. All the data in the column will be lost.
  - Added the required column `content` to the `CoverLetter` table without a default value. This is not possible if the table is not empty.
  - Made the column `growthRate` on table `IndustryInsight` required. This step will fail if there are existing NULL values in that column.
  - Changed the type of `demandLevel` on the `IndustryInsight` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `marketOutlook` on the `IndustryInsight` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "CoverLetter" ADD COLUMN     "content" TEXT NOT NULL,
ADD COLUMN     "status" TEXT NOT NULL DEFAULT 'draft';

-- AlterTable
ALTER TABLE "IndustryInsight" ALTER COLUMN "growthRate" SET NOT NULL,
DROP COLUMN "demandLevel",
ADD COLUMN     "demandLevel" TEXT NOT NULL,
DROP COLUMN "marketOutlook",
ADD COLUMN     "marketOutlook" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "User" DROP COLUMN "imageurl",
ADD COLUMN     "imageUrl" TEXT;

-- DropEnum
DROP TYPE "DemandLevel";

-- DropEnum
DROP TYPE "MarketOutlook";
