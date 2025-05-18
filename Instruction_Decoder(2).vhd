----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2025 01:56:45 PM
-- Design Name: 
-- Module Name: Instruction_Decoder - Behavioral
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

entity Instruction_Decoder is
    Port ( Ins_Bus : in STD_LOGIC_VECTOR (11 downto 0);
           Reg_Ch_Jump : in STD_LOGIC_VECTOR (3 downto 0);
           Reg_Enable : out STD_LOGIC_VECTOR (2 downto 0);
           Load_Sel : out STD_LOGIC;  -- 1 when immediate value
           Imm_Value : out STD_LOGIC_VECTOR (3 downto 0);
           Reg_Sel_1 : out STD_LOGIC_VECTOR (2 downto 0);
           Reg_Sel_2 : out STD_LOGIC_VECTOR (2 downto 0);
           Add_Sub_Sel : out STD_LOGIC; -- add - 0, subtract - 1
           Jump_Flag : out STD_LOGIC;
           Address_Jump : out STD_LOGIC_VECTOR (3 downto 0));
end Instruction_Decoder;

architecture Behavioral of Instruction_Decoder is

signal type_ins: std_logic_vector(1 downto 0);

begin

type_ins <= Ins_Bus(11 downto 10);

process(type_ins, Ins_Bus, Reg_Ch_Jump)
begin
    -- Default assignments to avoid latches
    Reg_Enable <= "000";
    Load_Sel <= '0';
    Imm_Value <= "0000";
    Reg_Sel_1 <= "000";
    Reg_Sel_2 <= "000";
    Add_Sub_Sel <= '0';
    Jump_Flag <= '0';
    Address_Jump <= "0000";

    case type_ins is
        when "00" => -- Load immediate
            Reg_Enable <= Ins_Bus(9 downto 7);
            Load_Sel <= '1';
            Imm_Value <= Ins_Bus(3 downto 0);
            
        when "10" => -- Arithmetic (add)
            Reg_Sel_1 <= Ins_Bus(9 downto 7);
            Reg_Sel_2 <= Ins_Bus(6 downto 4);
            Add_Sub_Sel <= '0';
            Load_Sel <= '0';
            
        when "01" => -- Arithmetic (subtract)
            Reg_Sel_1 <= "000";
            Reg_Sel_2 <= Ins_Bus(9 downto 7);
            Add_Sub_Sel <= '1';
            Load_Sel <= '0';
            
        when "11" => -- Jump
            Reg_Sel_1 <= Ins_Bus(9 downto 7);
            if Reg_Ch_Jump = "0000" then
                Jump_Flag <= '1';
                Address_Jump <= Ins_Bus(3 downto 0);
            else
                Jump_Flag <= '0';
                Address_Jump <= "0000";
            end if;
            
        when others =>
            null; -- Defaults already set
    end case;
end process;

end Behavioral;
