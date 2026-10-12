import { Module } from '@nestjs/common';
import { PrismaModule } from '../prisma/prisma.module.js';
import { ExperienceResolver } from './experience.resolver.js';
import { ProfileRepository } from './profile.repository.js';
import { ProfileResolver } from './profile.resolver.js';
import { ProfileService } from './profile.service.js';

@Module({
  imports: [PrismaModule],
  providers: [
    ProfileRepository,
    ProfileService,
    ProfileResolver,
    ExperienceResolver,
  ],
})
export class ProfileModule {}
