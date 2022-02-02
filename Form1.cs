using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Combobox
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            cargarEstado();
        }
        private void cargarEstado()
        {
            cbxEstado.DataSource = null;
            cbxEstado.Items.Clear();
            cbxMunicipio.DataSource = null;
            cbxMunicipio.Items.Clear();
            cbxProvincia.DataSource = null;
            cbxProvincia.Items.Clear();

            string sql = "SELECT iddepartamento, departamento FROM t_departamento ORDER BY departamento ASC";
            MySqlConnection conexionBd = Conexion.conexion();
            conexionBd.Open();
            try
            {
                MySqlCommand comando = new MySqlCommand(sql, conexionBd);
                MySqlDataAdapter data = new MySqlDataAdapter(comando);
                DataTable table = new DataTable();
                data.Fill(table);
                cbxEstado.ValueMember = "iddepartamento";
                cbxEstado.DisplayMember = "departamento";
                cbxEstado.DataSource = table;
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Error..." + ex.Message);
            }
            finally
            {
                conexionBd.Close();
            }






        }

        private void cbxEstado_SelectionChangeCommitted(object sender, EventArgs e)
        {
            cbxProvincia.DataSource = null;
            cbxProvincia.Items.Clear();

            int iddepartamento = int.Parse(cbxEstado.SelectedValue.ToString());

            string sql = "SELECT idprovincia, provincia FROM t_provincia WHERE iddepartamento = '" + iddepartamento + "'ORDER BY provincia ASC";
            MySqlConnection conexionBd = Conexion.conexion();
            conexionBd.Open();
            try
            {
                MySqlCommand comando = new MySqlCommand(sql, conexionBd);
                MySqlDataAdapter data = new MySqlDataAdapter(comando);
                DataTable table = new DataTable();
                data.Fill(table);
                cbxProvincia.ValueMember = "idprovincia";
                cbxProvincia.DisplayMember = "provincia";
                cbxProvincia.DataSource = table;
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Error..." + ex.Message);
            }
            finally
            {
                conexionBd.Close();
            }
        }

        private void cbxProvincia_SelectionChangeCommitted(object sender, EventArgs e)
        {
            cbxMunicipio.DataSource = null;
            cbxMunicipio.Items.Clear();

            int idprovincia = int.Parse(cbxProvincia.SelectedValue.ToString());

            string sql = "SELECT idmunicipio, municipio FROM t_municipio WHERE idprovincia = '" + idprovincia + "'ORDER BY municipio ASC";
            MySqlConnection conexionBd = Conexion.conexion();
            conexionBd.Open();
            try
            {
                MySqlCommand comando = new MySqlCommand(sql, conexionBd);
                MySqlDataAdapter data = new MySqlDataAdapter(comando);
                DataTable table = new DataTable();
                data.Fill(table);
                cbxMunicipio.ValueMember = "idmunicipio";
                cbxMunicipio.DisplayMember = "municipio";
                cbxMunicipio.DataSource = table;
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Error..." + ex.Message);
            }
            finally
            {
                conexionBd.Close();
            }
        }
    }
}
