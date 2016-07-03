<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Irt extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$this->load->library('Myirt');
		$this->load->model('query_sql');
		$this->load->model('m_irt');
	}

	public function index()
	{
		$b= array(-1,0,1);
		$a= array(1,1.2,0.8);
		$u = array(1,0,1);
		$theta = 1;
		$this->myirt->likelihood($u,$b,$a,$theta);
			
	}
	public function e()
	{
		/*
			tong TS lam cau hoi
			(vd array
				(
					[0] => Array([id_question] => 19,[tongts] => 23)
		 			[1] => Array([id_question] => 20,[tongts] => 23))
	 			);
		*/
		$du_lieu_tong_TS = $this->m_irt->tong_TS();
		/*
			tong diem tat ca user trloi dung 1 CH
			VD: Array
				(
					[0] => Array([id_question] => 19[tongdung] => 15)
					[1] => Array([id_question] => 20[tongdung] => 9)
				)
		*/
		$du_lieu_tong_diem_dung_CH =  $this->m_irt->tong_TS_lam_dung_CH(); 

		foreach ($du_lieu_tong_TS as  $ts)
		{
			$tongTS[$ts['id_question']] = $ts['tongts'];
		}

		foreach ($du_lieu_tong_diem_dung_CH as  $diem_dung)
		{
			$tong_diem_dung_CH[$diem_dung['id_question']] = $diem_dung['tongdung'];
		}
		//xu ly du lieu CH
		foreach ($tongTS as $id_question => $sumts) {
			$du_lieu_CH[$id_question]['so_sv_lam_dung']= $tong_diem_dung_CH[$id_question];
			$du_lieu_CH[$id_question]['so_sv_lam_sai']= $tongTS[$id_question]-$tong_diem_dung_CH[$id_question];
			$du_lieu_CH[$id_question]['tong_so_sv']= $tongTS[$id_question];
		}
		//lay tat ca id question trong bang matran
		$id_question= $this->m_irt->id_question();
		 
		foreach ($id_question as $value) {
			//lay tat ca id ser tra loi dung 1 cau hoi
			$dulieu_id_user_trloi_dung_mot_CH[$value['id_question']]= $this->m_irt->id_user_trloi_dung_mot_CH($value['id_question']);
		}
		foreach ($id_question as $value) {
			//lay tat ca id ser tra loi sai 1 cau hoi
			$dulieu_id_user_trloi_sai_mot_CH[$value['id_question']]= $this->m_irt->id_user_trloi_sai_mot_CH($value['id_question']);
		}

		/*
			diem user trloi dung sau n cau hoi
			vd: Array
				(
					[0] => Array([id_user] => 34[dungcauhoi] => 9)
					[1] => Array([id_user] => 35[dungcauhoi] => 12)
				)
	
		*/
		$du_lieu_tong_diem_user_trloi_tatca_CH = $this->m_irt->tong_diem_user_trloi_tatca_CH();
		
		foreach ($du_lieu_tong_diem_user_trloi_tatca_CH as  $user) 
		{
			/*
				Array
				(
				    [34] => 9
				    [35] => 12
				    [36] => 5
			    )
			*/
			$tong_diem_user_trloi_tatca_CH[$user['id_user']] = $user["dungcauhoi"];

		}
		foreach ($dulieu_id_user_trloi_dung_mot_CH as $key => $id_user) 
		{
			foreach ($id_user as  $id_u) {
				$du_lieu_CH[$key]["trloidung"][$id_u['id_user']]= $tong_diem_user_trloi_tatca_CH[$id_u['id_user']];
			}
			
		}
	
		foreach ($dulieu_id_user_trloi_sai_mot_CH as $key1 => $id_user1) 
		{
			foreach ($id_user1 as  $id_u1) {
				$du_lieu_CH[$key1]["trloisai"][$id_u1['id_user']]= $tong_diem_user_trloi_tatca_CH[$id_u1['id_user']];

			}
			
		}
		//tinh do tuong quan nhi phan

		$tong_diem_tat_ca_user = $this->m_irt->tong_diem_tat_ca_user();
		
		$tong_SV = count($tong_diem_user_trloi_tatca_CH);
		// print_r($du_lieu_CH);die;
		$diem_tb_SV = $tong_diem_tat_ca_user[0]['tongtatcadiemuser']/$tong_SV;
		// echo $diem_tb_SV;
		$sn = $this->myirt->SN($tong_SV,$tong_diem_user_trloi_tatca_CH,$diem_tb_SV);

		foreach ($du_lieu_CH as $id_CH => $dl_CH) {
			$do_phan_biet[$id_CH]=$this->myirt->do_phan_biet($dl_CH['trloidung'],$dl_CH['trloisai'],$sn,$dl_CH['so_sv_lam_dung'],$dl_CH['so_sv_lam_sai'],$dl_CH['tong_so_sv']);
		}

	}

}

/* End of file irt.php */
/* Location: ./application/modules/irt/controllers/irt.php */