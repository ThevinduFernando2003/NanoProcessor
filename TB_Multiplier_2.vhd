----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/11/2025 06:38:32 PM
-- Design Name: 
-- Module Name: TB_Multiplier_2 - Behavioral
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

entity TB_Multiplier_2 is
--  Port ( );
end TB_Multiplier_2;

architecture Behavioral of TB_Multiplier_2 is

component Multiplier_2
Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
       B : in STD_LOGIC_VECTOR (3 downto 0);
       Y : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal A, B : std_logic_vector(3 downto 0);
signal Y : std_logic_vector(3 downto 0);       
       
begin

UUT : Multiplier_2 port map (
A => A,
B => B,
Y => y);

process
begin
    -- 230181J → 8 × 1 = 8
    A <= "1000";  -- 8
    B <= "0001";  -- 1
    wait for 100 ns;

    -- 230365D → 6 × 5 = 30 (truncated to 4 bits = 1110 or 14 if unsigned wrap)
    A <= "0110";  -- 6
    B <= "0101";  -- 5
    wait for 100 ns;

    -- 230219K → 2 × 1 = 2
    A <= "0010";  -- 2
    B <= "0001";  -- 1
    wait for 100 ns;

    -- 230188L → 8 × 8 = 64 (truncated = 0000 if 4-bit limit)
    A <= "1000";  -- 8
    B <= "1000";  -- 8
    wait;
end process; 


end Behavioral;
