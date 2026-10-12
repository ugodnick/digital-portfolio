import { Field, ID, ObjectType } from '@nestjs/graphql';

@ObjectType({
  description: 'A project delivered as part of a job',
})
export class Project {
  @Field(() => ID, { description: 'Unique project identifier' })
  id: string;

  @Field({ description: 'Project name' })
  name: string;

  @Field({ description: 'Short project summary and the stack used' })
  description: string;

  @Field(() => String, {
    nullable: true,
    description: 'Link to the project or the company site',
  })
  url: string | null;
}
