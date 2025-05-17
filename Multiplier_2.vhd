----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/11/2025 11:59:39 AM
-- Design Name: 
-- Module Name: Multiplier_2 - Behavioral
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

entity Multiplier_2 is
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           B : in STD_LOGIC_VECTOR (1 downto 0);
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end Multiplier_2;

architecture Behavioral of Multiplier_2 is

component FA
port (
A : in std_logic;
B : in std_logic;
C_in : in std_logic;
S : out std_logic;
C_out : out std_logic);

end component;

signal b0a0, b0a1, b1a0, b1a1 : std_logic;
signal s1, c1, s2, c2 : std_logic;

begin

FA_0 : FA
port map (
A => b0a1,
B => b1a0,
S => s1,
C_in => '0',
C_out => c1);

FA_1 : FA
port map (
A => '0',
B => b1a1,
S => s2,
C_in => c1,
C_out => c2);

b0a0 <= B(0) and A(0);
b0a1 <= B(0) and A(1);
b1a0 <= B(1) and A(0);
b1a1 <= B(1) and A(1);

Y(0) <= b0a0;
Y(1) <= s1;
Y(2) <= s2;
Y(3) <= c2;

end Behavioral;
