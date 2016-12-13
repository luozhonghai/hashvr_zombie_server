class Api::V1::Leke::UsersController < Lina::ApplicationController
  rescue_from ::Exception, with: :error_occurred
  #before_action :authenticate

  def error_occurred(e)
    render json: { error: e.message}
  end

  # def new
  define_action :new, {
    name: 'new',
    description: '',
    params: {
      type: 'object',
      required: [ 'ip' ],
      properties: {
        name: {
          type: 'string',
          description: 'ip地址',
        }
      }
    },
    return: {
      type: 'object',
      required: [ 'code' ],
      properties: {
        code: {
          type: 'string',
          description: '成功返回1，失败返回0',
        }
      }
    }
  } do
    # write code here, It's the same as before
    @user = Leke::User.find_by(ip: params[:ip])
    if @user == nil
      @user = Leke::User.create(ip: params[:ip])
    end
    @play = Leke::Play.create(leke_user: @user)
    if @play != nil  && @user != nil
      render json: { code: "1" }
    else
      render json: { code: "0" }      
    end

  end

  define_action :partner, {
      name: 'partner',
      description: '',
      params: {
        type: 'object',
        required: [ 'partner' ],
        properties: {
          ip: {
            type: 'string',
            description: 'partner identifier',
          }
        }
      },
      return: {
        type: 'object',
        required: [ 'code' ],
        properties: {
          code: {
            type: 'string',
            description: '成功返回1，失败返回0',
          }
        }
      }
    } do
      if params[:partner] == "dalian"
        render json: { code: "1" }
      elsif params[:partner] == "huanshi"
        render json: { code: "1" }
      else
        render json: { code: "0" }
      end
  end

  private
    def authenticate
      api_key = request.headers['X-Zombie-Api-Key']
      @user = Admin.where(api_key: api_key).first if api_key

      unless @user
        head status: :unauthorized
        return false        
      end
    end
end
