----------------------------------------------------------------------------------
-- Company: -
-- Engineer: AS-inf
-- 
-- Create Date: 02/28/2021 01:16:31 PM
-- Design Name: x86
-- Module Name: main - Behavioral
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
use IEEE.NUMERIC_STD.ALL;



entity main is
port
(
       out_test: out std_logic;
       clock_in: in std_logic
);
end main;

architecture Behavioral of main is

begin
out_test <= clock_in;

end Behavioral;
