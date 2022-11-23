<?php

class user
{
	private $db;
	function __construct()
	{
		$this->db=new Database;
	}

	public function store_list()
	{
		$store=$this->db->select("stores_list","status='Active'");
		if($store)
		{
			return $store;
		}
		else
		{
			return false;
		}
	}

    public function group_list()
    {
        $groups=$this->db->select("group_list","status='Active'");

        if($groups)
        {
            return $groups;
        }
        else
        {
            return false;
        }
    }
}



?>
