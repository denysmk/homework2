# frozen_string_literal: true

module ObjectModel
  # Define LinuxFriendly module
  module LinuxFriendly
    def fork_process
      super
    end
  end
  # Define Desktop class
  class Desktop
    def fork_process
      'Parent: allocate memory'
    end

    def mine_bitcoins
      inspect
    end
  end
  # Laptop class
  class Laptop < Desktop
    prepend LinuxFriendly
  end
end
