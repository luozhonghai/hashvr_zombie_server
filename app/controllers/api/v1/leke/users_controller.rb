class Api::V1::Leke::UsersController < Lina::ApplicationController
  # def new
  define_action :new, {
    name: 'new',
    description: '',
    params: {
      type: 'object',
      properties: {
      }
    },
    return: {
    }
  } do
    # write code here, It's the same as before
  end
end
