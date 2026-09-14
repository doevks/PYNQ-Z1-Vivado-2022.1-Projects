library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity FourBitComparator_tb is
end FourBitComparator_tb;

architecture bench of FourBitComparator_tb is

  component FourBitComparator
    port (
      a_data      : in  std_logic_vector(3 downto 0);
      b_data      : in  std_logic_vector(3 downto 0);
      result_data : out std_logic_vector(2 downto 0)
    );
  end component;

  signal a_data      : std_logic_vector(3 downto 0) := (others => '0');
  signal b_data      : std_logic_vector(3 downto 0) := (others => '0');
  signal result_data : std_logic_vector(2 downto 0);

begin

  uut: FourBitComparator
    port map (
      a_data      => a_data,
      b_data      => b_data,
      result_data => result_data
    );

 stimulus: process
  begin
    for i in 0 to 15 loop
      a_data <= std_logic_vector(to_unsigned(i, 4));
      b_data <= std_logic_vector(to_unsigned(15 - i, 4));
      wait for 10 ns;
    end loop;

    -- Also test equality.
    a_data <= "0101";
    b_data <= "0101";
    wait for 10 ns;

    wait;
  end process;

end bench;