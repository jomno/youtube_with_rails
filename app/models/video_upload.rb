class VideoUpload < ActiveType::Object
  attribute :file, :string
  attribute :title, :string
  attribute :description, :text
  attribute :category_id, :integer
  
  validates :file, presence: true
  validates :title, presence: true
  
    def upload!(user)
      account = Yt::Account.new access_token: user.identity.token
      result = account.upload_video self.file, title: self.title, description: self.description
    end
end