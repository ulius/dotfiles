# ActiveModel Matchers
# Matchers to test validations and mass assignments:

describe Post do
  it { should validate_uniqueness_of(:title) }
  it { should validate_presence_of(:body).with_message(/wtf/) }
  it { should validate_presence_of(:title) }
  it { should validate_numericality_of(:user_id) }
  it { should validate_uniqueness_of(:title) }
end

describe User do
  it { should_not allow_value("blah").for(:email) }
  it { should allow_value("a@b.com").for(:email) }
  it { should ensure_inclusion_of(:age).in_range(1..100) }
  it { should_not allow_mass_assignment_of(:password) }
end

it { should_not allow_mass_assignment_of(:password) }
it { should allow_mass_assignment_of(:first_name) }
it { should allow_mass_assignment_of(:first_name).as(:admin) }

it { should_not allow_value('bad').for(:isbn) }
it { should allow_value('isbn 1 2345 6789 0').for(:isbn) }

it { should ensure_exclusion_of(:age).in_range(30..60) }
# in_array - the array of not allowed values for this attribute
# in_range - the range of not allowed values for this attribute
# with_message - value the test expects to find in errors.on(:attribute). Regexp or string. Defaults to the translation for :exclusion.

it { should ensure_inclusion_of(:age).in_range(0..100) }
# in_array - the array of allowed values for this attribute
# in_range - the range of allowed values for this attribute
# with_low_message - value the test expects to find in errors.on(:attribute). Regexp or string. Defaults to the translation for :inclusion.
# with_high_message - value the test expects to find in errors.on(:attribute). Regexp or string. Defaults to the translation for :inclusion.

it { should ensure_length_of(:password).
  is_at_least(6).
  is_at_most(20) }
it { should ensure_length_of(:name).
  is_at_least(3).
  with_short_message(/not long enough/) }
it { should ensure_length_of(:ssn).
  is_equal_to(9).
  with_message(/is invalid/) }
# is_at_least - minimum length of this attribute
# is_at_most - maximum length of this attribute
# is_equal_to - exact requred length of this attribute
# with_short_message - value the test expects to find in errors.on(:attribute). Regexp or string. Defaults to the translation for :too_short.
#   with_long_message - value the test expects to find in errors.on(:attribute). Regexp or string. Defaults to the translation for :too_long.
#   with_message - value the test expects to find in errors.on(:attribute). Regexp or string. Defaults to the translation for :wrong_length. Used in conjunction with is_equal_to.

it { should validate_acceptance_of(:eula) }

it { should validate_confirmation_of(:password) }

it { should validate_numericality_of(:price) }
it { should validate_numericality_of(:age).only_integer }
it { should validate_numericality_of(:frequency).odd }
it { should validate_numericality_of(:frequency).even }

it { should validate_uniqueness_of(:keyword) }
it { should validate_uniqueness_of(:keyword).with_message(/dup/) }
it { should validate_uniqueness_of(:email).scoped_to(:name) }
it { should validate_uniqueness_of(:email).
                scoped_to(:first_name, :last_name) }
it { should validate_uniqueness_of(:keyword).case_insensitive }
