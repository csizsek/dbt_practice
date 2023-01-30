Welcome to your new dbt project!

### Install DBT

`brew tap dbt-labs/dbt`

`brew install dbt-postgres`

### Start the Postgres server in a Docker container

`docker run --rm --name dbt-practice-postgres -e POSTGRES_PASSWORD=foobar -p 5432:5432 postgres`

`psql -h localhost -p 5432 -U postgres -d postgres`

### Using the starter project

Try running the following commands:
- dbt run
- dbt test

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
