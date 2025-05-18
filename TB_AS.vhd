----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/09/2025 12:10:39 AM
-- Design Name: 
-- Module Name: TB_AS - Behavioral
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

entity TB_AS is
--  Port ( );
end TB_AS;

architecture Behavioral of TB_AS is

component AddSub
port (
A : in STD_LOGIC_VECTOR (3 downto 0);
B : in STD_LOGIC_VECTOR (3 downto 0);
M : in STD_LOGIC;
S : out STD_LOGIC_VECTOR (3 downto 0);
Cout : out STD_LOGIC;
Overflow : out STD_LOGIC;
Zero : out STD_LOGIC);
end component;

signal m,cout,overflow,zero : std_logic;
signal a,b,s : std_logic_vector(3 downto 0);

begin

UUT : AddSub port map (
A => a,
B => b,
S => s,
M => m,
Cout => cout,
Overflow => overflow,
Zero => zero);

process 
begin
--Index no - 230181J 8+1 = 9
m <= '0';
a <= "1000";
b <= "0001";
wait for 100 ns;

--Index no - 230365D 6-5 = 1
m <= '1';
a <= "1111";
b <= "0001";
wait for 100 ns;

--Index no - 230219K 9-1 = 8
a <= "1001";
b <= "0001";
wait for 100 ns;

--Index no - 230188L 8+8 = 16
m <= '0';
a <= "1000";
b <= "1000";
wait;

end process;

end Behavioral;
