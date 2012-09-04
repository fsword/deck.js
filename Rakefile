namespace :build do
  desc "render content to a single html file"
  task :content => :environments do
    head = File.read('head.part')
    tail = File.read('tail.part')
    content = @markdown.render File.read('index.md')
    File.open('index.html', 'w') do |f|
      f.write head
      f.write content[10..-1]
      f.write tail
    end
  end
end

task :environments do
  require './lib/boot.rb'
end

