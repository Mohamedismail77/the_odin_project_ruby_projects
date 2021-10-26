def caesar_cipher(input,key)
    output = input.codepoints().map do |char|
        if (char >= 65 && char <= 90) || (char >= 97 && char <= 122)
            out = char + key%26
            if (out >= 65 && out <= 90) || (out >= 97 && out <= 122)
                out.chr
            else
                (out - 26).chr
            end
        else
            char.chr
        end
    end
    output.join
end


puts caesar_cipher("What a string!",31)