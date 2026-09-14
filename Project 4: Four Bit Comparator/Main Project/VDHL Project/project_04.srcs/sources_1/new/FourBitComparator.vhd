library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity FourBitComparator is
  Port ( 
  a_data: in std_logic_vector(3 downto 0);
  b_data: in std_logic_vector(3 downto 0);
  result_data: out std_logic_vector(2 downto 0) --comparison data
  
  );
end FourBitComparator;




architecture Behavioral of FourBitComparator is

begin
result_data(0) <= '1' when unsigned(b_data) > unsigned(a_data) else '0';
result_data(1) <= '1' when unsigned(b_data) = unsigned(a_data) else '0';
result_data(2) <= '1' when unsigned(b_data) < unsigned(a_data) else '0';

end Behavioral;
