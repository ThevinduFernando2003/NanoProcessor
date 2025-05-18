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
    -- Test 1: A0=101 (from 230181), A1=011 (from 230219), S=0 → Q should be A0
        A0 <= "101";
        A1 <= "011";
        S <= '0';
        wait for 100 ns;

        -- Test 2: A0=101, A1=011, S=1 → Q should be A1
        S <= '1';
        wait for 100 ns;

        -- Test 3: A0=100 (from 230188), A1=101 (from 230365), S=0 → Q = A0
        A0 <= "100";
        A1 <= "101";
        S <= '0';
        wait for 100 ns;

        -- Test 4: A0=100, A1=101, S=1 → Q = A1
        S <= '1';
        wait;
end process;

end Behavioral;
