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

x0 <= A(0) xnor B(0);
x1 <= A(1) xnor B(1);
x2 <= A(2) xnor B(2);
x3 <= A(3) xnor B(3);

A_Equal <= x0 and x1 and x2 and x3;
A_Greater <= (A(3) and (not B(3))) or (x3 and A(2) and (not B(2))) or (x3 and x2 and A(1) and (not B(1))) or (x3 and x2 and x1 and A(0) and (not B(0)));
A_Less <= ((not A(3)) and B(3)) or (x3 and (not A(2)) and B(2)) or (x3 and x2 and (not A(1)) and B(1)) or (x3 and x2 and x1 and (not A(0)) and B(0));

end Behavioral;
