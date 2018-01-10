LIBRARY ieee  ; 
USE ieee.std_logic_1164.all  ; 
ENTITY mixcolumn_tb  IS 
END ; 
 
ARCHITECTURE mixcolumn_tb_arch OF mixcolumn_tb IS
  SIGNAL s1   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL i3   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL s2   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL i0   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL s3   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL i1   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL s0   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL i2   :  std_logic_vector (7 downto 0)  ; 
  COMPONENT mixcolumn  
    PORT ( 
      s1  : out std_logic_vector (7 downto 0) ; 
      i3  : in std_logic_vector (7 downto 0) ; 
      s2  : out std_logic_vector (7 downto 0) ; 
      i0  : in std_logic_vector (7 downto 0) ; 
      s3  : out std_logic_vector (7 downto 0) ; 
      i1  : in std_logic_vector (7 downto 0) ; 
      s0  : out std_logic_vector (7 downto 0) ; 
      i2  : in std_logic_vector (7 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : mixcolumn  
    PORT MAP ( 
      s1   => s1  ,
      i3   => i3  ,
      s2   => s2  ,
      i0   => i0  ,
      s3   => s3  ,
      i1   => i1  ,
      s0   => s0  ,
      i2   => i2   ) ; 


process

begin
wait for 10 ns;
	i0 <= x"63";
	i1 <= x"2F";
	i2 <= x"AF";
	i3 <= x"A2";
wait for 10 ns;
end process;

END ; 

