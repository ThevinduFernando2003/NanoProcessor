----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2025 09:37:33 PM
-- Design Name: 
-- Module Name: TB_TriStateBuff - Behavioral
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

entity TB_TriStateBuff is
--  Port ( );
end TB_TriStateBuff;

architecture Behavioral of TB_TriStateBuff is

component TriStateBuff
port (
Data_in : in STD_LOGIC_VECTOR (3 downto 0);
Enable : in STD_LOGIC;
Data_out : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal Data_in, Data_out : std_logic_vector(3 downto 0);
signal Enable : std_logic;

begin

UUT : TriStateBuff port map (
Data_in => Data_in,
Data_out => Data_out,
Enable => Enable);

process begin
        -- Test 1: 230181J → Data_in = 0101, Enable = 0 (output Z)
        Data_in <= "0101";
        Enable <= '0';
        wait for 100 ns;

        -- Enable = 1 → Output = 0101
        Enable <= '1';
        wait for 100 ns;

        -- Test 2: 230365D → Data_in = 1101
        Data_in <= "1101";
        wait for 100 ns;

        -- Disable output
        Enable <= '0';
        wait for 100 ns;

        -- Test 3: 230219K → Data_in = 1011, Enable = 1
        Data_in <= "1011";
        Enable <= '1';
        wait for 100 ns;

        -- Test 4: 230188L → Data_in = 1100, Enable = 0
        Data_in <= "1100";
        Enable <= '0';
        wait;
end process;

end Behavioral;
