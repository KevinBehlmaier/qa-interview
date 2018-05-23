# File.read('features') {|file| %x(cucumber features/#{file} > /dev/tty 2>&1)}
#
#{}%x(cucumber features/spectrum_buy.feature > /dev/tty 2>&1)
# %x(cucumber features/spectrum_enterprise.feature > /dev/tty 2>&1)
# %x(cucumber features/spectrum.feature > /dev/tty 2>&1)
# %x(cucumber features/spectrum_business.feature > /dev/tty 2>&1)

# Figure out reporting.
# i.e
# how many scenarios ran, how many passed, how many failed?

# blah.feature 3 passing scenarios 0 failing
# blah_business.feature 1 passing 0 failing

Dir.foreach('features') do |file|
  begin
  rescue => error
    puts error
  ensure
    if File.extname(file) == ".feature"
      %x(cucumber features/#{file} > /dev/tty 2>&1)
    end
  end
end
