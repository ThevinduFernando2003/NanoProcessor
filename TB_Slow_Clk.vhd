----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2025 02:08:33 AM
-- Design Name: 
-- Module Name: TB_Slow_Clk - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_Slow_Clk is
--  Port ( );
end TB_Slow_Clk;

architecture Behavioral of TB_Slow_Clk is

component Slow_Clk
Port ( Clk_in : in STD_LOGIC;
       Clk_out : out STD_LOGIC);
end component;

signal Clk_in,Clk_out : std_logic;

begin

UUT : Slow_Clk port map (
Clk_in => Clk_in,
Clk_out => Clk_out); 

process begin
while true loop
Clk_in <= '0';
wait for 5 ns;
Clk_in <= '1';
wait for 5 ns;
end loop;
end process;

end Behavioral;
