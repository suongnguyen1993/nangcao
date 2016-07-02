<?php
	class Query_sql extends CI_Model{
		function __construct()
		{
			parent::__construct();

		}
		function add($table = '', $data = NULL){
			$query = $this->db->insert($table, $data);
			$flag = $this->db->affected_rows();
			if($flag > 0){
				return 1;
			}
			else
			{
				return 0;
			}
		}
		function edit($table = '', $data = NULL, $where = NULL){
			$query = $this->db->where($where)->update($table, $data);
			$flag = $this->db->affected_rows();
			if($flag > 0){
				return 1;
			}
			else
			{
				return 0;
			}
		}
		function del($table = '', $where = NULL){
			$this->db->delete($table, $where); 
			$flag = $this->db->affected_rows();
			if($flag > 0){
				return 1;
			}
			else
			{
				return 0;
			}
		}

		function select_array($table = '', $data = NULL, $where = NULL, $order = '', $like = NULL){
			$result = $this->db->select($data)->from($table);
			if($where!=''){
				$result = $this->db->where($where);
			}
			if($like!=''){
				$result = $this->db->like($like);
			}
			if($order!=''){
				$result = $this->db->order_by($order);
			}
			$result = $this->db->get()->result_array();
			return $result;
		}
		function select_row($table = '', $data = NULL, $where = NULL, $order = ''){
			$result = $this->db->select($data)->from($table);
			if($where!=''){
				$result = $this->db->where($where);
			}
			if($order!=''){
				$result = $this->db->order_by($order);
			}
			$result = $this->db->get()->row_array();
			return $result;
		}
		function select_join ($data = NULL, $table = '', $table_join = '', $where = '',$option = "")
		{
			$this->db->select($data);
			$this->db->from($table);
			$this->db->join($table_join, $where ,$option);
			$result = $this->db->get()->row_array();
			return $result;
		}
		function total($table){
			return $this->db->from($table)->count_all_results();
		}
		function total_where($table,$where){
			return $this->db->from($table)->where($where)->count_all_results();
		}
		function view($select="", $table="", $start=NULL, $limit=NULL){

			return $this->db->select($select)->from($table)->order_by('id desc')->limit($limit, $start)->get()->result_array();
		}
		function view_where($select, $table, $where, $start, $limit){
			return $this->db->select($select)->from($table)->order_by('id desc')->where($where)->limit($limit, $start)->get()->result_array();
		}
		function check_maxid($table = ''){
			$results = $this->db->select_max('id')->from($table)->get()->row_array();
			$data = $results['id'] + 1;
			return $data;
		}
	}
?>