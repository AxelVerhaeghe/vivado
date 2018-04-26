library ieee;
use ieee.std_logic_1164.all;


package functions is

    function STR_COMPARE(str1 : STRING; str2 : STRING) return BOOLEAN;
    function WRAP_INTEGER (value, limit: integer) return integer;
    function WRAP_INTEGER (value, limit, subs: integer) return integer;
    function REVERSE_VECTOR (a: in std_logic_vector) return std_logic_vector; -- By Jonathan Bromley
    function AND_REDUCE(slv : in std_logic_vector) return std_logic;
    
end functions;

package body functions is

    function STR_COMPARE(str1 : STRING; str2 : STRING) return BOOLEAN is -- Allow comparison of non-equal length string
    begin
        if str1'length /= str2'length then
            return FALSE;
        else
            return (str1 = str2);
        end if;
    end function;

    function WRAP_INTEGER (value, limit: integer) return integer is
    begin
        if(value < limit or limit = 0) then
            return value;
        else
            return value - limit;
        end if;
    end WRAP_INTEGER;
    
    function WRAP_INTEGER (value, limit, subs: integer) return integer is
    begin
        if(value < limit or limit = 0) then
            return value;
        else
            return value - subs;
        end if;
    end WRAP_INTEGER;

    function REVERSE_VECTOR (a: in std_logic_vector) return std_logic_vector is
        variable result: std_logic_vector(a'RANGE);
        alias aa: std_logic_vector(a'REVERSE_RANGE) is a;
    begin
        for i in aa'RANGE loop
            result(i) := aa(i);
        end loop;
        return result;
    end;

    function AND_REDUCE(slv : in std_logic_vector) return std_logic is
        variable res_v : std_logic := '1';  -- Null slv vector will also return '1'
    begin
        for i in slv'range loop
            res_v := res_v and slv(i);
         end loop;
         return res_v;
    end function;

end functions;
