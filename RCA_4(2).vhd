----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2025 10:17:04 PM
-- Design Name: 
-- Module Name: RCA_4 - Behavioral
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

--Gunawardena H.A. - 230219K
--Lab 3

entity RCA_4 is
    Port ( A0 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           A3 : in STD_LOGIC;
           B0 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           B3 : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S0 : out STD_LOGIC;
           S1 : out STD_LOGIC;
           S2 : out STD_LOGIC;
           S3 : out STD_LOGIC;
           C_out : out STD_LOGIC;
           C_3 : out STD_LOGIC);
end RCA_4;

architecture Behavioral of RCA_4 is

component FA
port(
A : in std_logic;
B : in std_logic;
C_in : in std_logic;
S : out std_logic;
C_out : out std_logic);
end component;

signal FA0_S,FA0_C,FA1_S,FA1_C,FA2_S,FA2_C,FA3_S,FA3_C : std_logic;

begin

-- Instantiate Full Adders
FA_0 : FA
port map(
A => A0,
B => B0,
C_in => C_in,
S => S0,
C_out => FA0_C);

FA_1 : FA
port map(
A => A1,
B => B1,
C_in => FA0_C,
S => S1,
C_out => FA1_C);

FA_2 : FA
port map(
A => A2,
B => B2,
C_in => FA1_C,
S => S2,
C_out => FA2_C);

FA_3 : FA
port map(
A => A3,
B => B3,
C_in => FA2_C,
S => S3,
C_out => C_out);

-- Assign carry output
C_3 <= FA2_C;

-- Bitwise OR operations
OR0 <= A0 or B0;
OR1 <= A1 or B1;
OR2 <= A2 or B2;
OR3 <= A3 or B3;

-- Bitwise AND operations
AND0 <= A0 and B0;
AND1 <= A1 and B1;
AND2 <= A2 and B2;
AND3 <= A3 and B3;

end Behavioral;
