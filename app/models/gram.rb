class Gram < ApplicationRecord
  if @gram.valid?
    redirect_to root_path
  else
    render :new, status: :unprocessable_entity
  end
end
