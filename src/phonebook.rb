class PhoneBook
    def initialize
        @entries = {}
    end

    def add(name, number, is_listed)
        return false if @entries.key?(name)
        return false unless number.match?(/^[1-9]\d{2}-\d{3}-\d{4}$/)

        if is_listed
            return false if @entries.any? { |_, info| info[:number] == number && info[:listed] }
        end

        @entries[name] = { number: number, listed: is_listed }
        true
    end

    def lookup(name)
        entry = @entries[name]
        return nil unless entry && entry[:listed]
        entry[:number]
    end

    def lookupByNum(number)
        entry = @entries.find { |_, info| info[:number] == number && info[:listed] }
        return nil unless entry
        entry[0]
    end

    def namesByAc(areacode)
        @entries
        .select { |_, info| info[:number].start_with?(areacode) }
        .keys
    end
end
