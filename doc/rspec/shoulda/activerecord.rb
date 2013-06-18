# ActiveRecord Matchers

it { should accept_nested_attributes_for(:friends)
  .allow_destroy(true) # allow_destroy - Whether or not to allow destroy
  .limit(4) # limit - Max number of nested attributes
  .update_only(true) # update_only - Only allow updates
}

it { should belong_to(:parent, {class_name: 'whatever'} )
}

it { should have_db_column(:salary).
  of_type(:decimal).
  with_options(:precision => 10, :scale => 2) }

it { should have_db_index(:age) }
it { should have_db_index([:commentable_type, :commentable_id]) }
it { should have_db_index(:ssn).unique(true) }

it { should have_many(:enemies).through(:friends) }
it { should have_many(:enemies).dependent(:destroy) }
# :class_name - tests that the association resoves to class_name.
# :validate - tests that the association makes use of the validate

it { should have_one(:god) }
# :dependent - tests that the association makes use of the dependent option.
# :class_name - tests that the association resolves to class_name.
# :validate - tests that the association makes use of the validate

