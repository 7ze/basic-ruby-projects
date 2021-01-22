# frozen_string_literal: true

# Encrypt using caesar cipher
class CaesarCipher
  def alphabet?(character)
    character.match?(/[a-zA-Z]/)
  end

  def lowercase?(character)
    character.match?(/[a-z]/)
  end

  def uppercase?(character)
    character.match?(/[A-Z]/)
  end

  def wrap_z_to_a(character_value, initial_value)
    (((character_value - initial_value) % 26) + initial_value).chr
  end

  def encrypt_character(character, shift)
    shifted_value = character.ord + shift
    return wrap_z_to_a(shifted_value, 'a'.ord) if lowercase?(character)
    return wrap_z_to_a(shifted_value, 'A'.ord) if uppercase?(character)
  end

  def encrypt(text, shift)
    text.split('').map do |letter|
      alphabet?(letter) ? encrypt_character(letter, shift) : letter
    end.join('')
  end
end
