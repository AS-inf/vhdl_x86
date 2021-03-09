library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SIM_main is
end SIM_main;

architecture Behavioral of SIM_main is

COMPONENT aW_aR_REGISTER_8bit
PORT (  DATA_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        DATA_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        INSTR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        CLK : IN STD_LOGIC );
END COMPONENT;

SIGNAL INPUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL OUTPUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ADR_SRC : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL CLK_IN :  std_logic := '0';

begin

main: process begin
    CLK_IN <= not CLK_IN;
    wait for 20ms;
    INPUT <= "00001000";
    wait for 20ms;
    CLK_IN <= not CLK_IN;
    wait for 20ms;
    ADR_SRC <= x"c100";
    wait for 20ms;
    CLK_IN <= not CLK_IN;
    wait for 20ms;
    CLK_IN <= not CLK_IN;
    wait for 20ms;
    ADR_SRC <= x"00c2";
    wait for 20ms;
    CLK_IN <= not CLK_IN;
    wait for 20ms;
    ADR_SRC <= x"00c1";
    wait for 20ms;
    CLK_IN <= not CLK_IN;
    wait for 20ms;
    CLK_IN <= not CLK_IN;
    wait for 20ms;
    wait;
end process;

    U1: aW_aR_REGISTER_8bit PORT MAP(INPUT, OUTPUT, ADR_SRC ,CLK_IN);

end Behavioral;
