----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2025 08:58:03 PM
-- Design Name: 
-- Module Name: TriStateBuff - Behavioral
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

entity TriStateBuff is
    Port ( Data_in : in STD_LOGIC_VECTOR (3 downto 0);
           Enable : in STD_LOGIC;
           Data_out : out STD_LOGIC_VECTOR (3 downto 0));
end TriStateBuff;

architecture Behavioral of TriStateBuff is

begin

process (Data_in, Enable)

begin

if Enable = '1' then
Data_out <= Data_in;

else 
Data_out(3) <= 'Z';
Data_out(2) <= 'Z';
Data_out(1) <= 'Z';
Data_out(0) <= 'Z';

end if;

end process;

end Behavioral;
