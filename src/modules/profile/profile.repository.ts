import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service.js';

const portfolioInclude = {
  skills: { orderBy: { name: 'asc' as const } },
  experience: {
    orderBy: { startDate: 'desc' as const },
    include: { projects: { orderBy: { name: 'asc' as const } } },
  },
  projects: { orderBy: { name: 'asc' as const } },
};

@Injectable()
export class ProfileRepository {
  constructor(private readonly prisma: PrismaService) {}

  findPortfolio() {
    return this.prisma.profile.findFirst({
      include: portfolioInclude,
    });
  }
}
