To start app simple run `docker-compose up -d --build`

Default admin credentials `admin` `admin`

To successful startup you should define such environment variables
```
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_STORAGE_BUCKET_NAME
GOOGLE_MAP_API_KEY
```

### API
#### Employees
`/api/employees/?sort_by={value}`

Possible values `'first_name', 'last_name', 'position_title', '-first_name', '-last_name', '-position_title'`

#### Branches
`/api/branches/?name={name}&sort_by={value}`

Possible values `'first_name', 'last_name', 'position_title', '-first_name', '-last_name', '-position_title', 'name', '-name'`

Using `first_name`, `last_name`, `position_title` for sort will affect order of employees in branches