----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/18/2025 02:04:39 AM
-- Design Name: 
-- Module Name: Comparator_4_bit - Behavioral
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

entity Comparator_4_bit is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           A_Less : out STD_LOGIC;
           A_Equal : out STD_LOGIC;
           A_Greater : out STD_LOGIC);
end Comparator_4_bit;

architecture Behavioral of Comparator_4_bit is

signal x0,x1,x2,x3 : std_logic;

begin

A_less <= '1' when (
(A(3) = '1' and B(3) = '0') or
(A(3) = B(3) and A(2 downto 0) < B(2 downto 0) and A(3) = '1') or
(A(3) = B(3) and A(2 downto 0) < B(2 downto 0) and A(3) = '0')
) else '0';

A_equal <= '1' when A = B else '0';

A_greater <= '1' when (
(A(3) = '0' and B(3) = '1') or
(A(3) = B(3) and A(2 downto 0) > B(2 downto 0) and A(3) = '1') or
(A(3) = B(3) and A(2 downto 0) > B(2 downto 0) and A(3) = '0')
) else '0';

end Behavioral;
