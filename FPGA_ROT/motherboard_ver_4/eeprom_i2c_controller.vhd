library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eeprom_i2c_controller is
  generic(
    setup_wait : integer := 100_000
  );
	port(
		clk	  : in	std_logic;
		rst_n : in	std_logic;

    -- from cpu
    rw        : in  std_logic;
    adr_cpu   : in  std_logic_vector(7 downto 0);
    data_in   : in  std_logic_vector(7 downto 0);
    data_out  : out std_logic_vector(7 downto 0);

    -- From I2C_MASTER
    IDLE : in std_logic;
    DONE : in std_logic;
    NO_ACK : in std_logic;
    RD_BYTE: in std_logic_vector(7 downto 0);

    -- To I2C_MASTER
    EN : out std_logic;
    WR_N : out std_logic;
    STOPP : out std_logic;
    GO_IDLE : out std_logic;
    BAUD_RATE : out std_logic_vector(7 downto 0);
    WR_BYTE : out std_logic_vector(7 downto 0)
	);
end entity;

architecture RTL of eeprom_i2c_controller is
  type mode_select is (m_WRITE, m_READ_RAND, m_READ_SEQ);
  signal MODE : mode_select := m_READ_SEQ;

  type state_machine is (s_IDLE, s_START, s_ADDRESS_HH, s_ADDRESS_LL, s_WRITE, s_READ); 
  signal STATE : state_machine := s_IDLE;

  type ram_256byte is array (0 to 255) of std_logic_vector(7 downto 0);
  signal ram : ram_256byte := (others => (others => '0'));

  signal adr_hh : std_logic_vector(7 downto 0) := "00001000";
  signal adr_ll : std_logic_vector(7 downto 0) := "00000000";

  signal data_in_sig : std_logic_vector(7 downto 0);
  signal adr_cpu_sig : std_logic_vector(7 downto 0);

  signal en_sig   : std_logic;
  signal wr_n_sig : std_logic;

  signal counter : unsigned(7 downto 0) := (others => '0');

  signal setup_counter : integer := 0;
  signal setup_done : std_logic := '0';

  signal done_dff : std_logic;
  signal state_dff : state_machine := s_IDLE;

  -- Baud-rate is set to 400kHz for I2C fast mode
  signal baud_rate_sig : std_logic_vector(7 downto 0) := "00101010";


begin

  BAUD_RATE <= baud_rate_sig;
  data_out <= ram(to_integer(unsigned(adr_cpu)));
  

  p_en : process(clk) is
  begin
		if rising_edge(clk) then
      if rst_n = '0' then
        EN <= '0';
      else
        case STATE is
          when s_IDLE =>
            EN <= '0';

          when s_START =>
            if state_dff /= STATE or NO_ACK = '1' then
              EN <= '1';
            else
              EN <= '0';
            end if;

          when others =>
            if state_dff /= STATE then
              EN <= '1';
            else
              EN <= en_sig;
            end if;
        end case;
      end if;
		end if;
  end process;

  p_state : process(clk)
  begin
		if rising_edge(clk) then
      if rst_n = '0' then
        STATE <= s_IDLE;
        setup_done <= '0';
        setup_counter <= 0;
        counter <= (others => '0');
        done_dff <= '0';
        ram <= (others => (others => '0'));
      else
        if setup_done = '0' then
          setup_counter <= setup_counter + 1;
        end if;
        state_dff <= STATE;
        done_dff <= DONE;
        case STATE is
          when s_IDLE =>
            WR_N <= '0';
            wr_n_sig <= '0';
            counter <= (others => '0');
            STOPP <= '0';
            GO_IDLE <= '0';
            if rw = '1' then
              adr_ll <= adr_cpu;
              data_in_sig <= data_in;
              MODE <= m_WRITE;
              STATE <= s_START;
            elsif setup_wait <= setup_counter and setup_done = '0' then
              adr_ll <= x"00";
              setup_done <= '1';
              MODE <= m_READ_SEQ;
              STATE <= s_START;
            end if;

          when s_START =>
            WR_BYTE <= "1010000" & wr_n_sig;
            if DONE = '1' and done_dff = '0' and NO_ACK = '0' then
              if wr_n_sig = '0' then
                STATE <= s_ADDRESS_HH;
              else
                STATE <= s_READ;
              end if;
            end if;

          when s_ADDRESS_HH =>
            WR_BYTE <= adr_hh;

            if DONE = '1' and done_dff = '0' then
              STATE <= s_ADDRESS_LL;
              if MODE /= m_WRITE then
                GO_IDLE <= '1';
              end if;
            end if;


          when s_ADDRESS_LL =>
            WR_BYTE <= adr_ll;

            if DONE = '1' and done_dff = '0' then
              GO_IDLE <= '0';
              if MODE = m_WRITE then
                STATE <= s_WRITE;
              else
                counter <= unsigned(adr_ll);
                wr_n_sig <= '1';
                STATE <= s_START;
              end if;
            end if;


          when s_WRITE =>
            MODE <= m_READ_RAND;
            WR_BYTE <= data_in_sig;
            if IDLE = '1' then
              STATE <= s_START;
              STOPP <= '0';
            else
              STOPP <= '1';
            end if;

          when s_READ =>
            WR_N <= '1';
            if counter = x"FF" or MODE = m_READ_RAND then
              STOPP <= '1';
            else
              STOPP <= '0';
            end if;
            if DONE = '1' and done_dff = '0' then
              ram(to_integer(counter)) <= RD_BYTE;
              if counter = x"FF" or MODE = m_READ_RAND then 
                STATE <= s_IDLE;
              else
                en_sig <= '1';
                counter <= counter + 1;
              end if;
            else
              en_sig <= '0';
            end if;
              
        end case;
      end if;
		end if;
  end process;

end architecture RTL;
