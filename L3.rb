$f #    �������� ����������
def open_f(f_name) #true - ���� ���� ������, ����� - false
    if(File.exists?(f_name))
        $f = File.open(f_name)
        return true
    else return false
    end
end

#���������� 3 ����� �� ������ str ��� nil
def get3word(str)
    howSpace = 0
    i = 0
    tmp_str = ""
    str.size.times do 
        if howSpace == 2
            tmp_str = tmp_str + str[i]
        end
        if str[i] == ' '
            howSpace = howSpace + 1
        end
        i = i + 1
    end
    return tmp_str
end

#@ ������� �� ����� ���� ����� � ��������� ������ age
def write_human_in_file(arr, age)
    i = 0
    f_res = File.open("results.txt", "w")
    st_all = true
    arr.size.times do
        if get3word(arr[i]).to_i == age
            f_res.write("������� ������ ���: #{arr[i]}\n")
        else st_all = false
        end
        i = i + 1
    end
    f_res.close
    f_res = File.open("results.txt", "r")
    print '������� -1 ��� ����, ����� ������� ���������� ����� results, ����� - ������ ����: '
    user_in = gets.to_i
    if st_all || user_in == -1
        f_data = f_res.readlines.map(&:chomp)
        puts f_data
    end
    
end

def main()
    print 'Enter file name: '
    f_name = gets.chomp
    if(open_f(f_name))
        puts 'File opened'
        f_data = $f.readlines.map(&:chomp)
        print '������� �������: '
        age = gets.to_i
        write_human_in_file(f_data, age) #�������� ��������� ��������� � result.txt
        $f.close
    else puts 'File not exists'
    end    
end


main()