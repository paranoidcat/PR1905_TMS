class User < ApplicationRecord
  enum role: { user: 0, supervisor: 1, admin: 2}
end
