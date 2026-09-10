
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity LogicGates is
  Port ( 
        inputs : in std_logic_vector(1 downto 0); --2 bit inouts
        outputs: out std_logic_vector(3 downto 0)  --4 bit outputs
  );
end LogicGates;

architecture Behavioral of LogicGates is
signal a : std_logic;
signal b : std_logic;

begin

a <= inputs(0);
b <= inputs(1);

outputs(0) <= a and b;
outputs(1) <= a or b;
outputs(2) <= a xor b;
outputs(3) <= not a;

end Behavioral;
