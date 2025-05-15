----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.05.2025 12:16:28
-- Design Name: 
-- Module Name: TB_Program_Counter - Behavioral
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

entity TB_Program_Counter is
--  Port ( );
end TB_Program_Counter;

architecture Behavioral of TB_Program_Counter is
 -- Component declaration for the Unit Under Test (UUT)
   component Program_Counter
       Port (
           D   : in  STD_LOGIC_VECTOR(2 downto 0);
           Res : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q   : out STD_LOGIC_VECTOR(2 downto 0)
       );
   end component;

   signal D   : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
   signal Res : STD_LOGIC := '0';
   signal Clk : STD_LOGIC := '0';
   signal Q   : STD_LOGIC_VECTOR(2 downto 0);

begin
    -- Instantiate the UUT
uut: Program_Counter
    port map (
        D => D,
        Res => Res,
        Clk => Clk,
        Q => Q
    );

-- Clock generation process
clk_process : process
begin
    while true loop
        Clk <= '0';
        wait for 100 ns / 2;
        Clk <= '1';
        wait for 100 ns / 2;
    end loop;
end process;

-- Stimulus process
stim_proc: process
begin
    -- Apply reset
    Res <= '1';
    wait for 100 ns * 2;
    Res <= '0';
    wait for 100 ns;

    -- Apply different D inputs on each clock rising edge
    D <= "000";
    wait for 100 ns;

    D <= "001";
    wait for 100 ns;

    D <= "010";
    wait for 100 ns;

    D <= "011";
    wait for 100 ns;

    D <= "100";
    wait for 100 ns;

    D <= "101";
    wait for 100 ns;

    D <= "110";
    wait for 100 ns;

    D <= "111";
    wait for 100 ns;

    -- Finish simulation
    wait;
end process;

end Behavioral;
