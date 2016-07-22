using System;
using System.Drawing.Imaging;
using System.IO;
using System.Text;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;


namespace QRreader_wpf
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            ImageBrush b = new ImageBrush();
            b.ImageSource = new BitmapImage(new Uri("pack://application:,,,/desk.jpg"));
            b.Stretch = Stretch.Fill;
            bgpanel.Background = b;
            showImg.Source = new BitmapImage(new Uri("pack://application:,,,/img/exp.png"));
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                DragMove();
            }
        }

        private void close_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void getbtn_Click(object sender, RoutedEventArgs e)
        {
            string startCut = "CSharpWin_JD.CaptureImage.CaptureImageTool.GetCutImage";
            DllHelper helper = new DllHelper();
            var result = helper.InvokCut(startCut, new object[] { });
            if (result != null)
            {
                System.Drawing.Image image = (System.Drawing.Image)result;
                MemoryStream stream = new MemoryStream();
                image.Save(stream, ImageFormat.Png);
                BitmapImage bitmap = new BitmapImage();
                bitmap.BeginInit();
                bitmap.StreamSource = stream;
                bitmap.EndInit();
                showImg.Source = bitmap;
                stream = null;
                DecodeQR(image);
            }
        }

        public void DecodeQR(System.Drawing.Image img)
        {
            textbox.Text = "正在解析";
            Action action = new Action(delegate ()
            {
                string mess = "";
                try
                {
                    DllHelper helper = new DllHelper();
                    System.Drawing.Bitmap bmap = new System.Drawing.Bitmap(img);
                    string deCodeAss = "ThoughtWorks.QRCode.Codec.QRCodeDecoder.DeCodeImg";
                    var destring = helper.InvokQR(deCodeAss, new object[] { bmap, Encoding.UTF8 });
                   mess = destring.ToString();
                }
                catch (Exception ex)
                {
                    mess = "解析失败，请重试";
                }
                Dispatcher.BeginInvoke(new Action(delegate ()
                {
                    textbox.Text = mess;
                }), null);
            });
            action.BeginInvoke(null, null);
        }
    }
}
