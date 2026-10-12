import { Field, ID, ObjectType } from '@nestjs/graphql';
import { Experience } from './experience.model.js';
import { Project } from './project.model.js';
import { Skill } from './skill.model.js';

@ObjectType({
  description:
    'Candidate profile: contacts, skills, work experience, and projects',
})
export class Profile {
  @Field(() => ID, { description: 'Unique profile identifier' })
  id: string;

  @Field({ description: 'Full name' })
  name: string;

  @Field(() => String, {
    nullable: true,
    description: 'Short summary: specialization and experience',
  })
  description: string | null;

  @Field(() => [String], {
    description: 'Contacts and links: phone, email, Telegram',
    defaultValue: [],
  })
  links: string[];

  @Field(() => [Skill], {
    description: 'Professional skills',
    complexity: 2,
  })
  skills: Skill[];

  @Field(() => [Experience], {
    description: 'Work experience, from the most recent job to earlier ones',
    complexity: 5,
  })
  experience: Experience[];

  @Field(() => [Project], {
    description: 'All profile projects, including those linked to jobs',
    complexity: 3,
  })
  projects: Project[];
}
