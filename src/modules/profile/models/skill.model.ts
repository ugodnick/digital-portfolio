import { Field, ID, Int, ObjectType } from '@nestjs/graphql';

@ObjectType({ description: 'A professional skill and its proficiency level' })
export class Skill {
  @Field(() => ID, { description: 'Unique skill identifier' })
  id: string;

  @Field({ description: 'Skill name' })
  name: string;

  @Field(() => Int, {
    description: 'Proficiency level on a scale from 1 to 10',
  })
  level: number;
}
