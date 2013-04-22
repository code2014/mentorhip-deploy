using System;
using System.Data;
using System.Diagnostics;
using System.Collections.Generic;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace mono
{
	public class MySqlDBUtil
	{
		
		private static String connectionString = System.Configuration.ConfigurationManager.AppSettings["mysqlcon"];
		//server=222.197.165.109; user id=gradfund; password=gradfund09876%$#@!; 
		// private static String connectionString = "server=222.197.165.109; user id=gradfund; password=gradfund09876%$#@!; database=gradfund; pooling=false;charset=utf8";
		private MySqlDBUtil()
		{
		}


        public static Byte[] ReadBinary(string sql, MySqlParameter[] parameters)
        {
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                MySqlCommand cmd = new MySqlCommand(sql, connection);
                try
                {
                    connection.Open();
                    if (parameters != null) cmd.Parameters.AddRange(parameters);
                    MySqlDataReader reader = cmd.ExecuteReader();
                    reader.Read();
                    return ((Byte[])reader[0]);
                }

                catch (Exception e)
                {
                    throw e;
                }
            }
        }

		//执行单条插入语句，并返回id，不需要返回id的用ExceuteNonQuery执行。
		public static int ExecuteInsert(string sql,MySqlParameter[] parameters)
		{
			//Debug.WriteLine(sql);
			using (MySqlConnection connection = new MySqlConnection(connectionString))
			{
				MySqlCommand cmd = new MySqlCommand(sql, connection);
				try
				{
					connection.Open();
					if(parameters!=null)cmd.Parameters.AddRange(parameters);
					cmd.ExecuteNonQuery();
					cmd.CommandText = @"select LAST_INSERT_ID()";
					int value = Int32.Parse(cmd.ExecuteScalar().ToString());
					return value;
				}
				catch (Exception e)
				{
					throw e;
				}
			}
		}
		
		public static int ExecuteInsert(string sql)
		{
			return ExecuteInsert(sql,null);
		}
		
		//执行带参数的sql语句,返回影响的记录数（insert,update,delete)
		public static int ExecuteNonQuery(string sql,MySqlParameter[] parameters)
		{
			//Debug.WriteLine(sql);
			using (MySqlConnection connection = new MySqlConnection(connectionString))
			{
				MySqlCommand cmd = new MySqlCommand(sql, connection);
				try
				{
					connection.Open();
					if(parameters!=null) cmd.Parameters.AddRange(parameters);
					int rows = cmd.ExecuteNonQuery();
					return rows;
				}
				catch (Exception e)
				{
					throw e;
				}
			}
		}
		//执行不带参数的sql语句，返回影响的记录数
		//不建议使用拼出来SQL
		public static int ExecuteNonQuery(string sql)
		{
			return ExecuteNonQuery(sql,null);
		}
		
		//执行单条语句返回第一行第一列,可以用来返回count(*)
		public static string ExecuteScalar(string sql,MySqlParameter[] parameters)
		{
			//Debug.WriteLine(sql);
			using (MySqlConnection connection = new MySqlConnection(connectionString))
			{
				MySqlCommand cmd = new MySqlCommand(sql, connection);
				try
				{
					connection.Open();
					if(parameters!=null) cmd.Parameters.AddRange(parameters);
					object obRet = cmd.ExecuteScalar();
					if (obRet != null)
						return obRet.ToString();
					else
						return "";
					
				}
				catch (Exception e)
				{
					throw e;
				}
			}
		}
		public static string ExecuteScalar(string sql)
		{
			return ExecuteScalar(sql,null);
		}
		
		//执行事务
		public static void ExecuteTrans(List<string> sqlList,List<MySqlParameter[]> paraList)
		{
			//Debug.WriteLine(sql);
			using (MySqlConnection connection = new MySqlConnection(connectionString))
			{
				MySqlCommand cmd = new MySqlCommand();
				MySqlTransaction transaction = null;
				cmd.Connection = connection;
				try
				{
					connection.Open();
					transaction = connection.BeginTransaction();
					cmd.Transaction = transaction;
					
					for(int i=0;i<sqlList.Count;i++)
					{
						cmd.CommandText=sqlList[i];
						if(paraList!=null&&paraList[i]!=null) 
						{
							cmd.Parameters.Clear();
							cmd.Parameters.AddRange(paraList[i]);
						}
						cmd.ExecuteNonQuery();
					}
					transaction.Commit();
					
				}
				catch (Exception e)
				{
					try
					{
						transaction.Rollback();
					}
					catch
					{
						
					}
					throw e;
				}
				
			}
		}
		public static void ExecuteTrans(List<string> sqlList)
		{
			ExecuteTrans(sqlList,null);
		}
		
		//执行查询语句，返回dataset
		public static DataSet ExecuteQuery(string sql,MySqlParameter[] parameters)
		{
			//Debug.WriteLine(sql);
			using (MySqlConnection connection = new MySqlConnection(connectionString))
			{
				DataSet ds = new DataSet();
				try
				{
					connection.Open();
					
					MySqlDataAdapter da = new MySqlDataAdapter(sql, connection);
					if(parameters!=null) da.SelectCommand.Parameters.AddRange(parameters);
					da.Fill(ds,"ds");
				}
				catch (Exception ex)
				{
					throw ex;
				}
				return ds;
			}
		}
		public static DataSet ExecuteQuery(string sql)
		{
			return ExecuteQuery(sql,null);
		}        
	}
}


