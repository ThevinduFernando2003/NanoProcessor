----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2025 12:00:54 AM
-- Design Name: 
-- Module Name: TB_Program_Rom - Behavioral
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

entity TB_Program_Rom is
--  Port ( );
end TB_Program_Rom;

architecture Behavioral of TB_Program_Rom is

component Program_Rom

Port ( Address : in STD_LOGIC_VECTOR (2 downto 0);
       Data : out STD_LOGIC_VECTOR (11 downto 0));

end component;

signal Address : std_logic_vector (2 downto 0);
signal Data : std_logic_vector (11 downto 0);

begin

UUT : Program_Rom port map (
Address => Address,
Data => data);

process begin

Address <= "000";
wait for 100 ns;

Address <= "001";
wait for 100 ns;

Address <= "010";
wait for 100 ns;

Address <= "011";
wait for 100 ns;

Address <= "100";
wait for 100 ns;

Address <= "101";
wait for 100 ns;

Address <= "110";
wait for 100 ns;

Address <= "111";
wait for 100 ns;

wait;

end process;

end Behavioral;
