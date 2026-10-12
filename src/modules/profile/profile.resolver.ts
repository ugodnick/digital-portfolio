import { Query, Resolver } from '@nestjs/graphql';
import { Profile } from './models/profile.model.js';
import { ProfileService } from './profile.service.js';

@Resolver(() => Profile)
export class ProfileResolver {
  constructor(private readonly profiles: ProfileService) {}

  @Query(() => Profile, {
    description:
      'The candidate profile, including skills, work experience, and projects.',
  })
  profile() {
    return this.profiles.getProfile();
  }
}
