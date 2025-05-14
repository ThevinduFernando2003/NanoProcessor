----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/02/2025 08:42:32 PM
-- Design Name: 
-- Module Name: Mux_8_Way_4_Bit - Behavioral
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

entity Mux_8_Way_4_Bit is
    Port ( a0 : in STD_LOGIC_VECTOR (3 downto 0);
           a1 : in STD_LOGIC_VECTOR (3 downto 0);
           a2 : in STD_LOGIC_VECTOR (3 downto 0);
           a3 : in STD_LOGIC_VECTOR (3 downto 0);
           a4 : in STD_LOGIC_VECTOR (3 downto 0);
           a5 : in STD_LOGIC_VECTOR (3 downto 0);
           a6 : in STD_LOGIC_VECTOR (3 downto 0);
           a7 : in STD_LOGIC_VECTOR (3 downto 0);
           s : in STD_LOGIC_VECTOR (2 downto 0);
           q : out STD_LOGIC_VECTOR (3 downto 0));
end Mux_8_Way_4_Bit;

architecture Behavioral of Mux_8_Way_4_Bit is

begin
process(a0,a1,a2,a3,a4,a5,a6,a7,s)
    begin
        if s = "000" then 
            q <= a0;
        elsif s = "001" then
            q <= a1;
        elsif s = "010" then
            q <= a2;
        elsif s = "011" then
            q <= a3;
        elsif s = "100" then
            q <= a4;
        elsif s = "101" then
            q <= a5;
        elsif s = "110" then
            q <= a6;
        elsif s = "111" then
            q <= a7;
        end if;
end process;

            



end Behavioral;
