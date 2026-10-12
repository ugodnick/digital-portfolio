import { Int, Parent, ResolveField, Resolver } from '@nestjs/graphql';
import { Experience, monthsBetween } from './models/experience.model.js';

@Resolver(() => Experience)
export class ExperienceResolver {
  @ResolveField(() => Int)
  durationInMonths(@Parent() experience: Experience): number {
    return monthsBetween(experience.startDate, experience.endDate);
  }
}
