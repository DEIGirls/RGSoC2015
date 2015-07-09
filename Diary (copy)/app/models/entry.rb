class Entry < ActiveRecord::Base
	validates :title, length: {  minimum:1, maximum:255}
	validates :description, length: {  minimum:1, maximum:4096}
	validates :author, length: {  minimum:1, maximum:4}
	validates :author, inclusion: { in: %w(Rosa Ines)}
	validates :author, exclusion: { in: %w(coiso XD GX '' nil)}

end
