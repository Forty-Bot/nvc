entity lcs2016_41 is
end entity;

use std.reflection.all;

architecture test of lcs2016_41 is
begin

    p1: process is
        variable stm : subtype_mirror;
        variable astm : array_subtype_mirror;
        variable vm : value_mirror;
        variable i : integer;
        variable v : bit_vector(1 to 3);
    begin
        stm := integer'reflect;         -- OK
        vm := i'reflect;                -- OK
        i := integer'reflect;           -- Error
        i := i'reflect;                 -- Error
        stm := v'subtype'reflect;       -- OK
        assert stm.get_type_class = CLASS_ARRAY;  -- OK
        astm := stm.to_array;           -- OK
        vm := p1'reflect;               -- Error
        assert v'subtype'reflect.get_type_class = CLASS_ARRAY;  -- OK
        wait;
    end process;

end architecture;