require "rails_helper"

RSpec.describe Book, type: :model do
  it "is valid with required attributes" do
    book = described_class.new(title: "Clean Code", author: "Robert C. Martin", status: "to_read")
    expect(book).to be_valid
  end

  it "rejects unsupported statuses" do
    book = described_class.new(title: "Clean Code", author: "Robert C. Martin", status: "queued")
    expect(book).not_to be_valid
  end
end
