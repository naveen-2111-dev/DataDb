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

  const Setting = await prisma.settingsa.create({
    data: {
      theme: 'dark' || 'light',
      LikeCount: 10,
      commentCount: 20,
      AddNumber: 6382813423,
      changeUserEmail: "naveen@gmail.com"
    },
  });

  console.log(user, post, Setting);
}

main()
  .catch((e) => {
    console.log("error", e);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
