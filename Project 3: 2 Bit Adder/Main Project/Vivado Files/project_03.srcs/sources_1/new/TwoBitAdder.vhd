library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TwoBitAdder is
  Port ( 
  a_data: in std_logic_vector(1 downto 0);
  b_data: in std_logic_vector(1 downto 0);
  output_data: out std_logic_vector(2 downto 0) --2 bit + 2 bit toplamı en fazla 6 olduğundan sonuç 3 bit olmalıdır.
  );
end TwoBitAdder;



architecture Behavioral of TwoBitAdder is

begin
output_data <= std_logic_vector(resize(unsigned(a_data), 3) + resize(unsigned(b_data), 3));

end Behavioral;
