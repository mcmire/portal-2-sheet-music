require 'pp'
require 'colored'

guard 'shell' do
  watch %r{^.+\.ly$} do |m|
    ly = m[0]
    base = ly.sub(/\.ly$/, "")
    pdf = ly.sub(/\.ly$/, ".pdf")
    ps = ly.sub(/\.ly$/, ".ps")

    cmd = %{lilypond -o "#{base}" "#{ly}"}
    puts "Running command: #{cmd}".cyan
    Notifier.notify("Converting #{ly}...", :title => "LilyPond")
    result = `#{cmd} 2>&1`
    matches = result.scan(/^#{Regexp.escape(ly)}:(\d+):(\d+): error: (.+)$/)
    if matches.any?
      puts result.red
      messages = []
      matches.each do |m|
        messages << "Error on line #{m[0]}, char #{m[1]}:\n#{m[2]}"
      end
      Notifier.notify(messages.join("\n"), :title => "LilyPond results", :image => :failed)
    else
      FileUtils.remove(ps) if File.exists?(ps)
      msg = "Successfully generated #{pdf}"
      puts msg.green
      Notifier.notify(msg, :title => "LilyPond results")
    end
  end
end