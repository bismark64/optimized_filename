module XYZService
    require 'securerandom'
    
    def self.xyz_filename(target)
        # File format:
        # [day of month zero-padded][three-letter prefix] \
        # _[kind]_[age_if_kind_personal]_[target.id] \
        # _[8 random chars]_[10 first chars of title].jpg
        filename = "#{target.publish_on.strftime("%d")}
                    #{target.xyz_category_prefix}
                    _#{target.kind.gsub("_", "")}
                    #{"_%03d" % (target.age || 0) if target.personal?}
                    _#{target.id}
                    _#{SecureRandom.hex(4)}
                    _#{target.title.gsub(/[^\[a-z\]]/i, '').downcase[0..9]}
                    .jpg".gsub(/\s+/, "")
    end
end