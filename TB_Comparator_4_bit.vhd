----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/18/2025 04:41:35 AM
-- Design Name: 
-- Module Name: TB_Comparator_4_bit - Behavioral
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

entity TB_Comparator_4_bit is
--  Port ( );
end TB_Comparator_4_bit;

architecture Behavioral of TB_Comparator_4_bit is

component Comparator_4_bit
Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
       B : in STD_LOGIC_VECTOR (3 downto 0);
       A_Less : out STD_LOGIC;
       A_Equal : out STD_LOGIC;
       A_Greater : out STD_LOGIC);
end component;

signal A,B : std_logic_vector (3 downto 0);
signal A_Less,A_Equal,A_Greater : std_logic; 

begin

UUT : Comparator_4_bit port map (
A => A,
B => B,
A_Less => A_Less,
A_Equal => A_Equal,
A_Greater => A_Greater);

process begin
    --Index 230181J: A = 8, B = 1
    A <= "1000"; 
    B <= "0001";
    wait for 100 ns;

    --Index 230365D: A = 6, B = 5
    A <= "0110";
    B <= "0101";
    wait for 100 ns;

    --Index 230219K: A = 2, B = 1
    A <= "0010";
    B <= "0001";
    wait for 100 ns;

    --Index 230188L: A = 8, B = 8
    A <= "1000";
    B <= "1000";
    wait;
end process;

end Behavioral;
