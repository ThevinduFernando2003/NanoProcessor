----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.05.2025 11:35:39
-- Design Name: 
-- Module Name: TB_Mux_2_Way_4_Bit - Behavioral
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

entity TB_Mux_2_Way_4_Bit is
--  Port ( );
end TB_Mux_2_Way_4_Bit;

architecture Behavioral of TB_Mux_2_Way_4_Bit is
-- Component declaration
    component Mux_2_Way_4_Bit
        Port (
            A0 : in  STD_LOGIC_VECTOR (3 downto 0);
            A1 : in  STD_LOGIC_VECTOR (3 downto 0);
            S  : in  STD_LOGIC;
            Q  : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;

    -- Signals to connect to UUT
    signal A0, A1, Q : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal S : STD_LOGIC := '0';
begin
    -- Instantiate Unit Under Test
uut: Mux_2_Way_4_Bit
    port map (
        A0 => A0,
        A1 => A1,
        S  => S,
        Q  => Q
    );

-- Stimulus process to test mux functionality
stim_proc: process
begin
    -- Test 1: Select A0
    A0 <= "0000";
    A1 <= "1111";
    S <= '0';
    wait for 100 ns;

    -- Test 2: Select A1
    S <= '1';
    wait for 100 ns;

    -- Test 3: Change inputs, select A0
    A0 <= "1010";
    A1 <= "0101";
    S <= '0';
    wait for 100 ns;

    -- Test 4: Select A1 again
    S <= '1';
    wait for 100 ns;

    -- Test complete, stop simulation
    wait;
end process;

end Behavioral;
