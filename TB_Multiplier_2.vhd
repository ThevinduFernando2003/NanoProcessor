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

A <= "0000";
B <= "0000";
wait for 100 ns;
A <= "0001";
B <= "0001";
wait for 100 ns;
A <= "0011";
B <= "0011";
wait;
end process; 


end Behavioral;
