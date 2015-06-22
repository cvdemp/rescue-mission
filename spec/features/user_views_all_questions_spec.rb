require 'rails_helper'

feature 'user views questions', %Q{
  As a user
  I want to view recently posted questions
  So that I can help others
} do
  Question.create!(title:"I was wondering about at thing stuff and other things", description:"So this one time I did that thing and it was great but now I'm confused and I coded for too long but now I know some rails and that is nice. So nice that I had to share.")
  Question.create!(title:"I am so confused about rails, I don't know what's happening!", description: "I tried to learn Rails really hard. It was not easy. I failed spectacularly. It was both amazing and terrifying and here I am now asking for help. Help me help me help me.")
  Question.create!(title:"So I have more rails questions. This is kind of theraputic...", description: "Rails has lots of parts and they move and I don't know why. How do I make it stop, it goes sooooo fast. So very fast. HAAAAAAAALLLLLLLLLPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP")

  # Acceptance Criteria
  #
  # [x] I must see the title of each question
  # [x] I must see questions listed in order, most recently posted first

  scenario 'visits index and sees the title of each question' do
    visit questions_path

    expect(page).to have_content('I was wondering about at thing stuff and other things')
  end
end
