module RubyModule

	def palindromo?(s)
		s.downcase!
		newStr = ""
		flipped = ""	
		s.each_byte{ |c|
			if c>=97 and c<=122
				newStr += c.chr
				flipped = c.chr + flipped
			end
		}
		return newStr==flipped
	end

	def cuenta_palabras(s)
		hash = Hash.new
		s.each_line(' '){|word|
			w = ""	
			word.downcase.each_byte{ |c|
				if c>=97 and c<=122
					w += c.chr
				end
			}		
			if hash[w] != nil
				hash[w] += 1
			else
				hash[w] = 1
			end
		}
		return hash
	end

	def hanoi(numero_discos, t_origen, t_destino, t_alterna)
		if numero_discos != 0
			hanoi(numero_discos-1, t_origen, t_alterna, t_destino)
			puts "Move from #{t_origen} to #{t_alterna}"
			hanoi(numero_discos-1, t_destino, t_origen, t_alterna)
		end
	end

	def sort(a, asc)
		sorted = a
		quicksort(sorted, 0, sorted.size-1)
		if !asc
			desc = Array.new(a.size)
			for i in 0..a.size-1
				desc[a.size-1-i] = sorted[i] 
			end
			sorted = desc
		end
		return sorted
	end

	def quicksort(a, lo, hi)
		if lo < hi
			p = partition(a, lo, hi)
			quicksort(a, lo, p-1)
			quicksort(a, p+1, hi)
		end
	end

	def partition(a, lo, hi)
	    x = a[hi]
	    i = lo-1
	    for j in lo..hi-1
	      if a[j] <= x
	        i += 1
	        a[i], a[j] = a[j], a[i]
	      end
	    end
	    a[i+1], a[hi] = a[hi], a[i+1]
	    i+1
	end

	def char_count(s, c)
		cont = 0
		s.each_byte{ |b|
			if b.chr == c
				cont += 1
			end
		}
		return cont
	end

	def atoi(s)
		pow = 10**(s.size-1)
		n = 0
		s.each_byte{|b|
			n= n + ((b - 48)*pow)
			pow = pow/10
		}
		return n
	end
end
