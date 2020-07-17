def create_index(directory, title)
    Dir.chdir(directory) do
        all = Dir.glob("*").select { |f| f[0] != '.' && f[0] != '_' && !f.match(/^index/)}.sort_by{|x| x.downcase}
        files = all.select { |filename| not File.directory?(filename) } 
        dirs = all.select { |filename| File.directory?(filename) } 

        open("index.md", "w") do |index|
            index << "---\n"
            index << "title: \"#{title}\"\n"
            index << "---\n"

            if dirs.length > 0
                index << "# Categories\n"
                dirs.each do |dir|
                    index << "* [#{dir}](#{dir}/index)\n"
                end
                index << "\n"
            end
            index << "# #{title}\n"
            files.each do |filename|
                bits = filename.split(".")
                index << "* [#{bits[0].gsub('-', ' ')}](#{bits[0]})\n"
            end
        end

        dirs.each do |dir|
            puts dir
            create_index dir, dir
        end
    end
end

create_index ".", "Contents"
