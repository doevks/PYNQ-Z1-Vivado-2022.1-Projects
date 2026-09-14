library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ThreeToEightDecoder is
  Port ( 
    address: in std_logic_vector(2 downto 0);
    enable: in std_logic;
    result: out std_logic_vector(7 downto 0)
  );
end ThreeToEightDecoder;

architecture Behavioral of ThreeToEightDecoder is
begin
    process(address, enable) --veya (all) da diyebilirsin. 
        variable temp: unsigned(7 downto 0);
    begin
        temp := (others => '0');
        if enable = '1' then
            temp(to_integer(unsigned(address))) := '1';
        end if;
        result <= std_logic_vector(temp);
    end process;
end Behavioral;