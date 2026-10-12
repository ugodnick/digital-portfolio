import { Injectable, NotFoundException } from '@nestjs/common';
import { ProfileRepository } from './profile.repository.js';

@Injectable()
export class ProfileService {
  constructor(private readonly profiles: ProfileRepository) {}

  async getProfile() {
    const profile = await this.profiles.findPortfolio();

    if (!profile) {
      throw new NotFoundException('Profile not found');
    }

    return profile;
  }
}
