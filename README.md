# Rails Youtube Upload

## setup Gemfile
```ruby
gem 'yt', '~> 0.13.7'
gem 'bootstrap-sass', '~> 3.3.0.1'
gem 'autoprefixer-rails'
gem 'rails-observers'
gem 'devise'
gem 'omniauth'
gem "omniauth-google-oauth2"  
gem "figaro"
gem 'rails_db'
gem 'active_type', '0.3.1'
```
## reference post
>[YouTube API, Version 3 on Rails](https://www.sitepoint.com/youtube-api-version-3-rails/)<br>
>[devise_oauth_jomno](https://github.com/jomno/devise_facebook_kakao)<br>
>[omniauth-google-oauth2 gem](https://github.com/zquestz/omniauth-google-oauth2)<br>
>[google api console](https://console.developers.google.com/)<br>
>[yt gem](https://github.com/Fullscreen/yt)<br>
>[rails_db gem](https://github.com/igorkasyanchuk/rails_db)<br>
>[active_type gem](https://github.com/makandra/active_type)<br>
>[google scope](https://developers.google.com/identity/protocols/googlescopes)

## ToDo list
- [x] yt gem install
- [x] devise with google (for upload youtube)
- [x] get video information(yt gem)
- [x] uplaod youtube video(yt gem)
- [x] auto iframe
- [x] add category tab
- [x] add toastr_rails(flash)
- [ ] admin set
- [ ] Set permissions
- [ ] VIDEO API
- 

## 주요 이슈
active admin arbre issues
-
이게.. active admin을 쓰면 arbre가 자동인데.. video나 article 같은 명령어는 뷰헬퍼로 작동됨<br>
그래서 모델명이 같다면 rename을 해줘야하는데 그거는
```ruby
ActiveAdmin.register Video, as: "Post"
```
이런식으로 해줘야 합니당 ㅎㅎ..