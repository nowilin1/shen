using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data;
using System.Data.SqlClient;

namespace Database_demo
{
    /// <summary>
    /// Логика взаимодействия для mainHotelPage.xaml
    /// </summary>
    public partial class mainHotelPage : Page
    {
        public string Access;
        public mainHotelPage()
        {
            InitializeComponent();
        }
        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrWhiteSpace(login_Box.Text))
            {
                errors.AppendLine("Укажите логин");
            }
            if (string.IsNullOrWhiteSpace(pass_Box.Text))
            {
                errors.AppendLine("Укажите пароль");
            }
            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString(), "Ошибка входа!");
                return;
            }
            var login = login_Box.Text;
            var password = pass_Box.Text;
            string querystring = null;
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
            DataTable table = new DataTable();
            string admin = "Admin";
            string manager = "Manager";
            querystring = $"SELECT Login, Password, Access FROM Users where Login ='{login}' and Password = '{password}'";
            SqlConnection SqlConnection = new SqlConnection(@"Data Source = DESKTOP-HIDPVTM\SQLEXPRESS01; Initial Catalog=daHotelPage; Integrated Security=True");
            SqlCommand sqlCommand = new SqlCommand(querystring, SqlConnection);
            sqlDataAdapter.SelectCommand = sqlCommand;
            sqlDataAdapter.Fill(table);
            if (table.Rows.Count == 1)
            {
                MessageBox.Show("Вы успешно вошли!", "Успешно!", MessageBoxButton.OK);
                Access = table.Rows[0][2].ToString();
                if (Access == admin)
                {
                    Manager.MainFrame.Navigate(new hotelPage());
                    SqlConnection.Close();
                }

                else if (Access == manager)
                {
                    Manager.MainFrame.Navigate(new ToursPage());
                    SqlConnection.Close();
                }
        }
            else
                MessageBox.Show("Логин или пароль неверный. Если Вы забыли пароль - обратитесь к администрации", "Аккаунт не обнаружен!", MessageBoxButton.OK);

        }
    }
}
