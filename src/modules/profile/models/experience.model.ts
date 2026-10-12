import {
  Directive,
  Field,
  GraphQLISODateTime,
  ID,
  Int,
  ObjectType,
} from '@nestjs/graphql';
import { Project } from './project.model.js';

export function monthsBetween(startDate: Date, endDate: Date | null): number {
  const end = endDate ?? new Date();

  return (
    (end.getFullYear() - startDate.getFullYear()) * 12 +
    (end.getMonth() - startDate.getMonth())
  );
}

@ObjectType({
  description:
    'A job held by the candidate, including key achievements and related projects',
})
export class Experience {
  @Field(() => ID, {
    description: 'Unique work-experience record identifier',
  })
  id: string;

  @Field({ description: 'Company name' })
  company: string;

  @Field({
    description: 'Job title (for example, Senior Node.js Developer)',
  })
  position: string;

  @Field(() => GraphQLISODateTime, { description: 'Employment start date' })
  startDate: Date;

  @Field(() => GraphQLISODateTime, {
    nullable: true,
    description: 'Employment end date',
  })
  endDate: Date | null;

  @Field(() => [String], {
    description: 'Key achievements in this role',
    defaultValue: [],
  })
  achievements: string[];

  @Field(() => [Project], {
    description: 'Projects delivered while working at this company',
    complexity: 5,
  })
  projects: Project[];

  @Directive('@cacheControl(maxAge: 3600)')
  @Field(() => Int, {
    description:
      'Computed field. Length of employment in months. For the current job, counted through today.',
  })
  get periodInMonths(): number {
    return monthsBetween(this.startDate, this.endDate);
  }
}
