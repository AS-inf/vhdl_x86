----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/09/2021 05:26:13 PM
-- Design Name: 
-- Module Name: aW_aR_REGISTER_8bit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity aW_aR_REGISTER_8bit is
    Generic
    (
        constant WRITE_ADDR : STD_LOGIC_VECTOR (7 downto 0) := x"c1";   -- c->registers  odd->WRITE
        constant READ_ADDR : STD_LOGIC_VECTOR (7 downto 0) := x"c2"     -- c->registers  even->READ
    );
    Port 
    ( 
        signal CLK : in STD_ULOGIC;
        INSTR : in STD_LOGIC_VECTOR (15 downto 0);
        DATA_IN : in STD_LOGIC_VECTOR (7 downto 0);
        DATA_OUT : out STD_LOGIC_VECTOR (7 downto 0)
    );

end aW_aR_REGISTER_8bit;

architecture Behavioral of aW_aR_REGISTER_8bit is

signal MEMORY : STD_LOGIC_VECTOR (7 downto 0);

begin 
    process(CLK)    begin
        if rising_edge(CLK) then
            if INSTR(15 downto 8) = WRITE_ADDR then
                MEMORY <= DATA_IN;
            end if;
            if INSTR(7 downto 0) = READ_ADDR then
                DATA_OUT <= MEMORY;
            ELSE 
                DATA_OUT <= "UUUUUUUU";
            end if;
        end if;
    end process;
end Behavioral;
