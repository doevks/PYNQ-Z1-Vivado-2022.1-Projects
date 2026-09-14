library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BinaryCounter is
  Port ( 
    clock: in std_logic;
    control: in std_logic_vector(1 downto 0);
    counter_total: out std_logic_vector(31 downto 0)
  );
end BinaryCounter;

architecture Behavioral of BinaryCounter is
    signal count_reg : unsigned(31 downto 0) := (others => '0');
begin

process(clock)
begin
    if rising_edge(clock) then
        if control = "00" then
            count_reg <= count_reg;
        elsif control = "01" then
            count_reg <= count_reg + 1;
        elsif control = "10" then
            count_reg <= (others => '0');
        else
            count_reg <= count_reg - 1;
        end if;
    end if;
end process;

counter_total <= std_logic_vector(count_reg);

end Behavioral;