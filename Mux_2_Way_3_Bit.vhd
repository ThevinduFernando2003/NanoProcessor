----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/02/2025 02:48:15 PM
-- Design Name: 
-- Module Name: Mux_2_Way_3_Bit - Behavioral
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

entity Mux_2_Way_3_Bit is
    Port ( a0 : in STD_LOGIC_VECTOR (2 downto 0);
           a1 : in STD_LOGIC_VECTOR (2 downto 0);
           s : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (2 downto 0));
end Mux_2_Way_3_Bit;

architecture Behavioral of Mux_2_Way_3_Bit is

begin
    process(a0,a1,s)
    begin
        if s = '0' then 
            q <= a0;
        else
            q <= a1;
        end if;
    end process;
        
--q <= (a0 AND (NOT(s))) OR (a1 AND s);
end Behavioral;
