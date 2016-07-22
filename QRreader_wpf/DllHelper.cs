using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;

namespace QRreader_wpf
{
    public class DllHelper
    {
        /// <summary>调用截取屏幕</summary>
        public object InvokCut(string function, object[] para)
        {
            var dll = global::QRreader_wpf.Properties.Resources.CaptureImageTool;
            return InvokDll(dll, function, para);
        }

        /// <summary>调用QR识别</summary>
        public object InvokQR(string function, object[] para)
        {
            var dll = global::QRreader_wpf.Properties.Resources.ThoughtWorks_QRCode;
            return InvokDll(dll, function, para);
        }

        public object InvokDll(byte[] dll, string function, object[] para)
        {
            //string function = "DyDll.TestClass.StaticAdd";
            var needClass = function.Substring(0, function.LastIndexOf("."));
            var methodName = function.Substring(function.LastIndexOf(".") + 1);
            Assembly assembly = Assembly.Load(dll);
            Type thisClass = assembly.GetType(needClass, true);
            MethodInfo thisFunction = thisClass.GetMethod(methodName);
            bool IsStatic = thisFunction.IsStatic;
            object result;
            if (!IsStatic)
            {
                object o = Activator.CreateInstance(thisClass);
                result = thisFunction.Invoke(o, para);
            }
            else
                result = thisFunction.Invoke(null, para);
            return result;
        }

    }
}
