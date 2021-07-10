class Snap < ApplicationRecord
  belongs_to :user #snap:user=n:1
  attachment :snap_image #画像アップ用のメソッド（attachment）を追加してフィールド名に（snap_image）を指定
end
