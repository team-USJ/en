class MusicsController < ApplicationController
    def groups
        # groupテーブルかcategoryテーブルのどっちかにFK(〇〇_idカラム)を追加して、リレーションする
        # @groups = Group.where(Group.category.name = "音楽")
    end
end
