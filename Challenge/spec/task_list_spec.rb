require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour
  it 'checks if it can return all tasks' do
    task_list = TaskList.new
    task_1 = "Do the dishes"
    task_list.add(task_1)
    expect(task_list.all).to eq ['Do the dishes']
  end

  it 'checks when all tasks are completed' do
    task_list = TaskList.new
    task_1 = double :task, complete?: true
    task_2 = double :task, complete?: true
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all_complete?).to eq true
  end

  it 'checks when some tasks are completed' do
    task_list = TaskList.new
    task_1 = double :task, complete?: true
    task_2 = double :task, complete?: false
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all_complete?).to eq false
  end

  it 'checks when no tasks are completed' do
    task_list = TaskList.new
    task_1 = double :task, complete?: false
    task_2 = double :task, complete?: false
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all_complete?).to eq false
  end
end