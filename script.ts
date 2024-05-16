import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

async function main() {
  const user = await prisma.user.create({
    data: {
      name: "naveen",
      email: "naveen@gmail.com",
      isAdmin: true,
    },
  });

  const post = await prisma.post.create({
    data: {
      rating: 5.0,
      createdAt: new Date(),
      updatedAt: new Date(),
      userId: user.id,
    },
  });
  console.log(user, post);
}

main()
  .catch((e) => {
    console.log("error", e);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
