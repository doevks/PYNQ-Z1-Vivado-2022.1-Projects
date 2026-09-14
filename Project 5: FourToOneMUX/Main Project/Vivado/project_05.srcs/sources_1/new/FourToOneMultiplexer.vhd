library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity FourToOneMultiplexer is
  Port ( 
  inputs: in std_logic_vector(3 downto 0); --4 bits
  selector: in std_logic_vector(1 downto 0); --2 bits
  result: out std_logic --1 bit
  
  );
end FourToOneMultiplexer;


architecture Behavioral of FourToOneMultiplexer is
begin
    with selector select
        result <= inputs(0) when "00",
                  inputs(1) when "01",
                  inputs(2) when "10",
                  inputs(3) when others;

end Behavioral;
