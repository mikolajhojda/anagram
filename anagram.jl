
function is_anagram(x::String,y::String)
        xa = collect(x)
        ya = collect(y)
           if length(x) == length(y)
                for i = 1:length(x)
                    for j =1:length(x)-1
                        if xa[j]>xa[j+1]
                            temp1 = xa[j]
                            temp2 = xa[j+1]
                    
                            xa[j]=temp2
                            xa[j+1]=temp1
                        end
                        if ya[j]>ya[j+1]
                            temp3 = ya[j]
                            temp4 = ya[j+1]
                    
                            ya[j]=temp4
                            ya[j+1]=temp3
                        end
                    end
               end
                    if xa == ya return true
                    else return false

                    end
        
                else return false
            end
       end

function download_words(data)
    open(data) do file
        lines = readlines(file)
        for i=1:length(lines)
           lines[i] = lowercase(lines[i])
        end
        return lines
    end
end

function find_anagrams(anagram, words)
    count = 1
    array = String[]
    for i=1:length(lines)
        if is_anagram(anagram, lines[i]) == true
           array[count] = lines[i]
            count = count+1
        end
    end
    return array
end

words = download_words("words.txt")
println(find_anagrams("iceman", words)



















