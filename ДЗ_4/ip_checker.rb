# frozen_string_literal: true


class IpChecker

  def is_ip_address(ip_address)
    array = ip_address.split(".")

    if array.length != 4
      return false
    end

    array.each { |i|
      if i.to_i < 0 || i.to_i > 255
        return false
      end
    }
    true
  end
  end

