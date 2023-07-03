library ieee;
use ieee.math_real.all;

package pack is
    constant k : natural;
    type t is array (1 to k + 1) of bit_vector(k - 1 downto 0);
    function clog2(x: positive) return natural;
end package;

package body pack is
    constant k : natural := 4;
    function clog2(x: positive) return natural is begin
       return natural(ceil(log2(real(x))));
    end;
end package body;

-------------------------------------------------------------------------------

entity vhpi9 is
end entity;

use work.pack.all;

architecture test of vhpi9 is
    signal s : t;
    subtype u is bit_vector(clog2(50) - 1 downto 0);
    signal b : u;
begin
end architecture;
