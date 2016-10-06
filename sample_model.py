class ModelWithForeignKeyToUser{number}(models.Model):
    user = models.ForeignKey(User)
    value = models.IntegerField(default=0)

