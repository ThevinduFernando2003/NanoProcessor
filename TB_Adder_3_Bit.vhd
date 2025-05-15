----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.05.2025 11:47:56
-- Design Name: 
-- Module Name: TB_Adder_3_Bit - Behavioral
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

entity TB_Adder_3_Bit is
--  Port ( );
end TB_Adder_3_Bit;

architecture Behavioral of TB_Adder_3_Bit is
-- Component declaration for the Unit Under Test (UUT)
    component Adder_3_Bit
        Port (
            A : in  STD_LOGIC_VECTOR(2 downto 0);
            S : out STD_LOGIC_VECTOR(2 downto 0)
        );
    end component;

    signal A : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
    signal S : STD_LOGIC_VECTOR(2 downto 0);
begin
    -- Instantiate the Unit Under Test (UUT)
uut: Adder_3_Bit
    port map (
        A => A,
        S => S
    );

-- Stimulus process
stim_proc: process
begin
    -- Test all possible 3-bit inputs for A
    for i in 0 to 7 loop
        A <= std_logic_vector(to_unsigned(i, 3));
        wait for 100 ns;
    end loop;

    wait; -- wait forever
end process;

end Behavioral;
