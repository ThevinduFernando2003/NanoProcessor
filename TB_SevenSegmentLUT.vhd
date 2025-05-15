----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2025 11:33:53 PM
-- Design Name: 
-- Module Name: TB_SevenSegmentLUT - Behavioral
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

entity TB_SevenSegmentLUT is
--  Port ( );
end TB_SevenSegmentLUT;

architecture Behavioral of TB_SevenSegmentLUT is

component SevenSegmentLUT
Port ( Address : in STD_LOGIC_VECTOR (3 downto 0);
       Data : out STD_LOGIC_VECTOR (6 downto 0));
end component;

signal Address : std_logic_vector (3 downto 0);
signal Data : std_logic_vector (6 downto 0);

begin

UUT : SevenSegmentLUT port map (
address => address,
data => data);

process begin

Address <= "0000";--0
wait for 50 ns;

Address <= "0001";--1
wait for 50 ns;

Address <= "0010";--2
wait for 50 ns;

Address <= "0011";--3
wait for 50 ns;

Address <= "0100";--4
wait for 50 ns;

Address <= "0101";--5
wait for 50 ns;

Address <= "0110";--6
wait for 50 ns;

Address <= "0111";--7
wait for 50 ns;

Address <= "1000";--8
wait for 50 ns;

Address <= "1001";--9
wait for 50 ns;

Address <= "1010";--a
wait for 50 ns;

Address <= "1011";--b
wait for 50 ns;

Address <= "1100";--c
wait for 50 ns;

Address <= "1101";--d
wait for 50 ns;

Address <= "1110";--e
wait for 50 ns;

Address <= "1111";--f
wait;

end process;



end Behavioral;
