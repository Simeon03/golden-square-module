require 'task_formatter'

RSpec.describe 'task formatter class' do
    it 'checks if the task is completed' do
        task = double :task_object, complete: true
        task_formatter = TaskFormatter.new(task)
        expect(task_formatter.format).to eq ("[x] #{task}")
    end

    it 'checks if the task is uncompleted' do
        task = double :task_object, complete: false
        task_formatter = TaskFormatter.new(task)
        expect(task_formatter.format).to eq ("[ ] #{task}")
    end
end