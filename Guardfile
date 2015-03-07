guard :rubocop do
  watch(%r{.+\.rb$})
  watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
end

# ChefSpec tests
guard :rspec, cmd: 'bundle exec rspec', all_on_start: true do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^(recipes)/(.+)\.rb$}) { |m| "spec/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')    { 'spec' }
end
