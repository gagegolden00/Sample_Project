# frozen_string_literal: true

class Article < ApplicationRecord

end

# you can run the rails console with 'rails console' command and then access these
# classes. for instance run Article.all and it will generate a SQL command to
# retrieve all from the database. pretty neat

# USING CREATE METHOD
# from here you can also create new entries in the database by running ruby code
# Article.create(title: "sample article title", description: "sample article description")
# notice create method is being used here and not new. this is because new does not
# persist to the database, so when adding DIRECTLY to the database we want to create.

# USING NEW METHOD
# the best way to do this is assigning a variable and then using the getters/setters
# to inject the information about the object.. like so
# article2 = Article.new (create new article)
# article (this command will simply show the values which are nil if not initialized)
# article.title = "article 2"
# article.description = "article 2 description"
# !! !! !! !! !! !! !! !! !! !! !! !! !! !! !! !! !! !! !! !! !! !! !! !!
# I notice when doing this ALL of the fields are init set to nil even timestamps & id
# these fields wont be generated UNTIL it hits the database using save method like so
# this is the difference between new and create
# article2.save
# and bam there are the values. it works.
### !! !! !! you can just chain the .save method