----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/08/2025 11:22:54 PM
-- Design Name: 
-- Module Name: AddSub - Behavioral
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

entity AddSub is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           M : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Cout : out STD_LOGIC;
           Overflow : out STD_LOGIC;
           Zero : out STD_LOGIC);
end AddSub;

architecture Behavioral of AddSub is

component RCA_4
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
end component;

signal b0,b1,b2,b3,s0,s1,s2,s3,c,c3 : std_logic;

begin

RCA_4_0 : RCA_4
port map (
A0 => A(0),
A1 => A(1),
A2 => A(2),
A3 => A(3),
B0 => b0,
B1 => b1,
B2 => b2,
B3 => b3,
C_in => M,
S0 => s0,
S1 => s1,
S2 => s2,
S3 => s3,
C_out => c,
C_3 => c3);

b0 <= B(0) xor M;
b1 <= B(1) xor M;
b2 <= B(2) xor M;
b3 <= B(3) xor M;

S(0) <= s0;
S(1) <= s1;
S(2) <= s2;
S(3) <= s3;

Cout <= c;

Zero <= (not s0) and (not s1) and (not s2) and (not s3);
Overflow <= c xor c3;

end Behavioral;
