----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/02/2025 08:22:50 PM
-- Design Name: 
-- Module Name: mux_2_way_4_bit - Behavioral
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

entity mux_2_way_4_bit is
    Port ( a0 : in STD_LOGIC_VECTOR (3 downto 0);
           a1 : in STD_LOGIC_VECTOR (3 downto 0);
           s : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (3 downto 0));
end mux_2_way_4_bit;

architecture Behavioral of mux_2_way_4_bit is

begin
process(a0,a1,s)
    begin
        if s = '0' then 
            q <= a0;
        else
            q <= a1;
        end if;
    end process;

end Behavioral;
