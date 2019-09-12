class BaseController < ApplicationController
    def home 
    end

    def analytics
        @total_users = User.all.length
        @total_channels = Channel.all.length
        most = 0
        @most_post_user = nil
        User.all.each do |user|
            useramount = []
            Post.all.each do |post|
                if post.user = user
                    useramount << post
                end
            end
            if useramount.length > most
                most = useramount.length
                @most_post_user = user.display_name
            end
        end
        @total_posts = Post.all.length
        most = 0
        @most_popular_channel = nil
        Channel.all.each do |channel|
            channel_amount = []
            Post.all.each do |post|
                if post.channel = channel
                    channel_amount << channel
                end
            end
            if channel_amount.length > most
                most = channel_amount.length
                @most_popular_channel = channel.name
            end
        end
        #start of getting last 10 active users
        array = []
       Post.all.each do |post|
            if array.include?(post.user) == false
                array << post.user
            end
        end
       @recent_users = array.last(10)
    end

    def sign_up
    end

    def login
    end

    
end