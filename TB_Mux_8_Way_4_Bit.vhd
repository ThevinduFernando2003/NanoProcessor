----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.05.2025 11:38:54
-- Design Name: 
-- Module Name: TB_Mux_8_Way_4_Bit - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_Mux_8_Way_4_Bit is
--  Port ( );
end TB_Mux_8_Way_4_Bit;

architecture Behavioral of TB_Mux_8_Way_4_Bit is
component Mux_8_Way_4_Bit
        Port (
            A0 : in  STD_LOGIC_VECTOR (3 downto 0);
            A1 : in  STD_LOGIC_VECTOR (3 downto 0);
            A2 : in  STD_LOGIC_VECTOR (3 downto 0);
            A3 : in  STD_LOGIC_VECTOR (3 downto 0);
            A4 : in  STD_LOGIC_VECTOR (3 downto 0);
            A5 : in  STD_LOGIC_VECTOR (3 downto 0);
            A6 : in  STD_LOGIC_VECTOR (3 downto 0);
            A7 : in  STD_LOGIC_VECTOR (3 downto 0);
            S  : in  STD_LOGIC_VECTOR (2 downto 0);
            Q  : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;

    signal A0, A1, A2, A3, A4, A5, A6, A7 : STD_LOGIC_VECTOR(3 downto 0);
    signal S : STD_LOGIC_VECTOR(2 downto 0) := "000";
    signal Q : STD_LOGIC_VECTOR(3 downto 0);
begin
    uut: Mux_8_Way_4_Bit
    port map (
        A0 => A0,
        A1 => A1,
        A2 => A2,
        A3 => A3,
        A4 => A4,
        A5 => A5,
        A6 => A6,
        A7 => A7,
        S  => S,
        Q  => Q
    );

stim_proc: process
begin
    -- Initialize inputs with distinct values
    A0 <= "0000";
    A1 <= "0001";
    A2 <= "0010";
    A3 <= "0011";
    A4 <= "0100";
    A5 <= "0101";
    A6 <= "0110";
    A7 <= "0111";

    -- Cycle through select values and wait
    for i in 0 to 7 loop
        S <= std_logic_vector(to_unsigned(i, 3));
        wait for 100 ns;
    end loop;

    wait;  -- wait forever
end process;

end Behavioral;
