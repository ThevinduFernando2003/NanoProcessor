----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.04.2025 23:10:28
-- Design Name: 
-- Module Name: PC_3 - Behavioral
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

entity PC_3 is
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           PC : out STD_LOGIC_VECTOR (2 downto 0));
end PC_3;

architecture Behavioral of PC_3 is
    component D_FF
        Port (
            D    : in  STD_LOGIC;
            Res  : in  STD_LOGIC;
            Clk  : in  STD_LOGIC;
            Q    : out STD_LOGIC;
            Qbar : out STD_LOGIC
        );
    end component;

    component RCA_3
        Port (
            A0    : in  STD_LOGIC;
            A1    : in  STD_LOGIC;
            A2    : in  STD_LOGIC;
            B0    : in  STD_LOGIC;
            B1    : in  STD_LOGIC;
            B2    : in  STD_LOGIC;
            C_in  : in  STD_LOGIC;
            S0    : out STD_LOGIC;
            S1    : out STD_LOGIC;
            S2    : out STD_LOGIC;
            C_out : out STD_LOGIC
        );
    end component;
    
    signal Q0, Q1, Q2       : STD_LOGIC;
    signal Q0b, Q1b, Q2b    : STD_LOGIC;  -- unused Qbar outputs
    signal S0, S1, S2       : STD_LOGIC;
    signal carry_unused     : STD_LOGIC;
    
begin
    ADDER: RCA_3
        port map (
            A0    => Q0,
            A1    => Q1,
            A2    => Q2,
            B0    => '1',
            B1    => '0',
            B2    => '0',
            C_in  => '0',
            S0    => S0,
            S1    => S1,
            S2    => S2,
            C_out => carry_unused
        );

    -- D-Flip-Flops for each bit of PC
    DFF0: D_FF
        port map (
            D    => S0,
            Res  => Reset,
            Clk  => Clk,
            Q    => Q0,
            Qbar => Q0b
        );

    DFF1: D_FF
        port map (
            D    => S1,
            Res  => Reset,
            Clk  => Clk,
            Q    => Q1,
            Qbar => Q1b
        );

    DFF2: D_FF
        port map (
            D    => S2,
            Res  => Reset,
            Clk  => Clk,
            Q    => Q2,
            Qbar => Q2b
        );

    -- Pack Q2,Q1,Q0 into the output vector
    PC <= Q2 & Q1 & Q0;

end Behavioral;
