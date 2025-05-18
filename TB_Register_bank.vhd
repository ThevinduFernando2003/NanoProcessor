----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2025 12:34:45 AM
-- Design Name: 
-- Module Name: TB_Register_bank - Behavioral
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

entity TB_Register_bank is
--  Port ( );
end TB_Register_bank;

architecture Behavioral of TB_Register_bank is

component Register_Bank
Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
       I : in STD_LOGIC_VECTOR (2 downto 0);
       Clk : in STD_LOGIC;
       Clr : in STD_LOGIC;
       R0 : out STD_LOGIC_VECTOR (3 downto 0);
       R1 : out STD_LOGIC_VECTOR (3 downto 0);
       R2 : out STD_LOGIC_VECTOR (3 downto 0);
       R3 : out STD_LOGIC_VECTOR (3 downto 0);
       R4 : out STD_LOGIC_VECTOR (3 downto 0);
       R5 : out STD_LOGIC_VECTOR (3 downto 0);
       R6 : out STD_LOGIC_VECTOR (3 downto 0);
       R7 : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal D : std_logic_vector (3 downto 0) := "0000";
signal I : std_logic_vector (2 downto 0) := "000";
signal R0,R1,R2,R3,R4,R5,R6,R7 : std_logic_vector (3 downto 0);
signal Clk,Clr : std_logic := '0';

begin

UUT : Register_Bank port map (
D => D,
I => I,
Clk => Clk,
Clr => CLr,
R0 => R0,
R1 => R1,
R2 => R2,
R3 => R3,
R4 => R4,
R5 => R5,
R6 => R6,
R7 => R7);

process begin
while true loop
Clk <= '0';
wait for 5 ns;
Clk <= '1';
wait for 5 ns;
end loop;
end process;

process begin

       wait for 100 ns; 

        -- 230181J: Write 0101 to R5  181 mod 16 = 5
        D <= "0101";
        I <= "101";
        wait for 100 ns;

        -- 230365D: Write 1101 to R5  365 mod 16 = 13
        D <= "1101";
        I <= "101";
        wait for 100 ns;

        -- 230219K: Write 1011 to R3 219 mod 16 = 11
        D <= "1011";
        I <= "011";
        wait for 100 ns;

        -- 230188L: Write 1100 to R4  188 mod 16 = 12
        D <= "1100";
        I <= "100";
        wait for 100 ns;

        -- Apply reset
        Clr <= '1';
        wait for 100 ns;
        Clr <= '0';

        wait;
end process;

end Behavioral;
