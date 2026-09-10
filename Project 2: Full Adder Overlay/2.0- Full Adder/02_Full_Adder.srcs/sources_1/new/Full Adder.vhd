
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Full_Adder is
  Port ( 
    input_data: in std_logic_vector(2 downto 0);
    output_data: out std_logic_vector(1 downto 0)
    
  );
end Full_Adder;



architecture Behavioral of Full_Adder is
signal A, B, Cin: std_logic;
begin
output_data(0) <= (A XOR B) XOR Cin; --Sum (out)
output_data(1) <= ((A XOR B) AND Cin) OR (A AND B); --Carry (out)

end Behavioral;
