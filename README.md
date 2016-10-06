# Django migrations analysis

Various attempts to solve Django very slow migrations issues.

Various useful links:
https://groups.google.com/forum/#!msg/django-users/V8Ei2qZJ8VI/bFUeY2wTAQAJ;context-place=forum/django-users

[1] https://github.com/django/django/commit/a1ba4627931591b80afa46e38e261f354151d91a 
[2] https://code.djangoproject.com/ticket/24225 
[3] https://github.com/django/django/commit/5aa55038ca9ac44b440b56d1fc4e79c876e51393 
[4] https://code.djangoproject.com/ticket/24745 
[5] https://github.com/MarkusH/django/commits/schemaeditor-modelstate 

## Tasks

- capture output from RunPython calls
- see if it's feasible to not allow anymore to use RunPython

- find out why we get this error with the `schema_editor` branch from Markus

    File "./manage.py", line 10, in <module>
        execute_from_command_line(sys.argv)
      File "/home/andrea/code/django-faster-migration/django/core/management/__init__.py", line 362, in execute_from_command_line
        utility.execute()
      File "/home/andrea/code/django-faster-migration/django/core/management/__init__.py", line 354, in execute
        self.fetch_command(subcommand).run_from_argv(self.argv)
      File "/home/andrea/code/django-faster-migration/django/core/management/base.py", line 297, in run_from_argv
        self.execute(*args, **cmd_options)
      File "/home/andrea/code/django-faster-migration/django/core/management/base.py", line 348, in execute
        output = self.handle(*args, **options)
      File "/home/andrea/code/django-faster-migration/django/core/management/commands/migrate.py", line 177, in handle
        executor.migrate(targets, plan, fake=fake, fake_initial=fake_initial)
      File "/home/andrea/code/django-faster-migration/django/db/migrations/executor.py", line 92, in migrate
        self._migrate_all_forwards(plan, full_plan, fake=fake, fake_initial=fake_initial)
      File "/home/andrea/code/django-faster-migration/django/db/migrations/executor.py", line 115, in _migrate_all_forwards
        state = self.apply_migration(state, migration, fake=fake, fake_initial=fake_initial)
      File "/home/andrea/code/django-faster-migration/django/db/migrations/executor.py", line 186, in apply_migration
        state = migration.apply(state, schema_editor)
      File "/home/andrea/code/django-faster-migration/django/db/migrations/migration.py", line 129, in apply
        operation.database_forwards(self.app_label, schema_editor, old_state, project_state)
      File "/home/andrea/code/django-faster-migration/django/db/migrations/operations/models.py", line 486, in database_forwards
        to_model_state.options.get(self.option_name, set()),
      File "/home/andrea/code/django-faster-migration/django/db/backends/sqlite3/schema.py", line 261, in alter_unique_together
        self._remake_table(model, override_uniques=new_unique_together)
      File "/home/andrea/code/django-faster-migration/django/db/backends/sqlite3/schema.py", line 80, in _remake_table
        body = {f.name: f for f in model._meta.local_concrete_fields}
    AttributeError: 'ModelStateOptions' object has no attribute 'local_concrete_fields'


## Usage

Running migrations has to be done in different steps:

- *dump_run_python* runs a full migration on an empty database, generating SQL files from migrations that are using RunPython
- *make_raw_migration*:
    same as make_migrations but creates python module migration and corresponding SQL file, it *does not* actually support RunPython calls
    Can be run on both an empty and a non empty databae, but will fail loudly on an existing database with new RunPython code.

- *migrate_raw*:
     same as migrate but uses the SQL files, so bypassing completely everything all the Python loading.
     follows the same order
  
