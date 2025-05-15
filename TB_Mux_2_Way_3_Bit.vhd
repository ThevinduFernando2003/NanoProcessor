----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.05.2025 11:31:16
-- Design Name: 
-- Module Name: TB_Mux_2_Way_3_Bit - Behavioral
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

entity TB_Mux_2_Way_3_Bit is
--  Port ( );
end TB_Mux_2_Way_3_Bit;

architecture Behavioral of TB_Mux_2_Way_3_Bit is
-- Component Declaration
    component Mux_2_Way_3_Bit
        Port (
            A0 : in  STD_LOGIC_VECTOR (2 downto 0);
            A1 : in  STD_LOGIC_VECTOR (2 downto 0);
            S  : in  STD_LOGIC;
            Q  : out STD_LOGIC_VECTOR (2 downto 0)
        );
    end component;

    -- Signals for interconnecting
    signal A0, A1, Q : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
    signal S : STD_LOGIC := '0';
begin
    -- Instantiate the Unit Under Test (UUT)
    uut: Mux_2_Way_3_Bit
    port map (
        A0 => A0,
        A1 => A1,
        S  => S,
        Q  => Q
    );

    -- Stimulus process
    stim_proc: process
begin
    -- Test Case 1: S = 0 => Output = A0
    A0 <= "000";
    A1 <= "111";
    S <= '0';
    wait for 100 ns;

    -- Test Case 2: S = 1 => Output = A1
    S <= '1';
    wait for 100 ns;

    -- Test Case 3: Change values again
    A0 <= "101";
    A1 <= "010";
    S <= '0';
    wait for 100 ns;

    S <= '1';
    wait for 100 ns;

    -- End simulation
    wait;
end process;

end Behavioral;
