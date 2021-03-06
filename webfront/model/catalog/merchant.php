<?php
class ModelCatalogMerchant extends Model {
	public function updateViewed($merchant_id) {
		$this->db->query("UPDATE " . DB_PREFIX . "merchant SET viewed = (viewed + 1) WHERE merchant_id = '" . (int)$merchant_id . "'");
	}
	public function getCategory($category_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = mp.product_id) LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.category_id = '" . (int)$category_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND c.status = '1'");

		return $query->row;
	}
	
	public function getMerchantImages($merchant_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "merchant_image WHERE merchant_id = '" . (int)$merchant_id . "' ORDER BY sort_order ASC");

		return $query->rows;
	}
	
	public function getMerchantAtmosphere($merchant_id) {
		$sql = "SELECT name FROM " . DB_PREFIX . "merchant_to_atmosphere m LEFT JOIN " . DB_PREFIX . "atmosphere a ON (m.atmosphere_id = a.atmosphere_id) WHERE m.merchant_id = '" . (int)$merchant_id . "'";
		
		$query = $this->db->query($sql);

		return $query->rows;
	}
	
	public function getMerchantFacilities($merchant_id) {
		$sql = "SELECT name FROM " . DB_PREFIX . "merchant_to_facilities m LEFT JOIN " . DB_PREFIX . "facilities a ON (m.facilities_id = a.facilities_id) WHERE m.merchant_id = '" . (int)$merchant_id . "'";
		
		$query = $this->db->query($sql);

		return $query->rows;
	}
	
	public function getMerchantSpokenLangauge($merchant_id) {
		$sql = "SELECT name FROM " . DB_PREFIX . "merchant_to_spokenlanguage m LEFT JOIN " . DB_PREFIX . "spokenlanguage a ON (m.spokenlanguage_id = a.spokenlanguage_id) WHERE m.merchant_id = '" . (int)$merchant_id . "'";
		
		$query = $this->db->query($sql);

		return $query->rows;
	}
	
	
	
	public function getMerchantsByCategoryId($data = array()) { //print_r($data);
		
		
		
		$sql="SELECT * FROM " . DB_PREFIX . "merchant m
			  
			  LEFT JOIN " . DB_PREFIX . "merchant_description md ON (m.merchant_id = md.merchant_id) 
			  
			  LEFT JOIN " . DB_PREFIX . "merchant_products mp ON (mp.merchant_id = m.merchant_id) 	
			  
			  LEFT JOIN " . DB_PREFIX . "product_to_category p2c ON (mp.product_id = p2c.product_id) 
			  
			  WHERE md.language_id = '" . (int)$this->config->get('config_language_id')  . "' AND m.status = '1' ";
			  
		if (!empty($data['filter_category_id']) && !empty($data['filter_category_id'])) {
			
			$sql .= " AND p2c.category_id = '" . (int)$data['filter_category_id'] . "' ";
		
		}
		
		if (!empty($data['filter_city_id']) && !empty($data['filter_city_id'])) {
			
			$sql .= " AND md.city_id = '" . (int)$data['filter_city_id'] . "' ";
		
		}	  
		
		$sql .= " GROUP BY m.merchant_id";
		
		if (isset($data['sort'])) {
			if ($data['sort'] == 'AZ' || $data['sort'] == 'AZ') {
				$sql .= " ORDER BY md.name ASC";
			} elseif ($data['sort'] == 'ZA') {
				$sql .= " ORDER BY  md.name DESC";
			}elseif ($data['sort'] == 'DATE') {
				$sql .= " ORDER BY  m.date_added ASC LIMIT 0,5";
			} else {
				$sql .= " ORDER BY " . $data['sort'];
			}
		} else {
			$sql .= " ORDER BY m.sort_order";
		} 	
			  
		 //print $sql;exit;
	
		 $query = $this->db->query($sql);
		  
		 return $query->rows;
		
	}
	
	public function getAllProductsByMerchantId($merchant_id) {
		
		
		
		$sql="SELECT mp.merchant_id , mp.product_id , pd.name, mp.duration , mp.price , pd.description, mp.product_desc, p.image, p.viewed, p.booked  FROM " . DB_PREFIX . "merchant_products mp
			  
			  LEFT JOIN " . DB_PREFIX . "product p ON (p.product_id = mp.product_id) 
			  
			  LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) 
			  
			  WHERE mp.merchant_id = '" . (int)$merchant_id . "'AND pd.language_id = '" . (int)$this->config->get('config_language_id')  . "'  AND p.status = '1' 
			  
			  ORDER BY p.sort_order"; 	
			  
			 // print $sql;
		
		 	 $query = $this->db->query($sql);
			  
			 return $query->rows;
		
	}
	
	
	public function getAllProductsByMerchant($data = array()) {
		
		$sql="SELECT mp.merchant_id , mp.product_id , pd.name, mp.duration , mp.price , pd.description, mp.product_desc, p.image, p.viewed, p.booked  FROM " . DB_PREFIX . "merchant_products mp
			  
			  LEFT JOIN " . DB_PREFIX . "product p ON (p.product_id = mp.product_id) 
			  
			  LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id)"; 
			  
		$sql.=" WHERE pd.language_id = '" . (int)$this->config->get('config_language_id')  . "'  AND p.status = '1'  ";
		
		$sql.=" AND mp.merchant_id = '" . (int)$date['merchant_id'] . "'";
		  
		$sql.="	ORDER BY p.sort_order"; 	
			  
			 // print $sql;
		
		 	 $query = $this->db->query($sql);
			  
			 return $query->rows;
		
	}
	
	
	public function getMerchants($product_id = 0) {
		
		 $sql="SELECT * FROM " . DB_PREFIX . "merchant_products mp
			  LEFT JOIN " . DB_PREFIX . "merchant m ON (mp.merchant_id = m.merchant_id) 	
			  LEFT JOIN " . DB_PREFIX . "merchant_description md ON (m.merchant_id = md.merchant_id) 
			  WHERE mp.product_id = '" . (int)$product_id . "'
			  AND md.language_id = '" . (int)$this->config->get('config_language_id')  . "'  AND m.status = '1'  
			  ORDER BY m.sort_order";			
	  // print $sql;exit;
		
		$query = $this->db->query($sql);

		return $query->rows;
	}
	
	
	
	public function getAllMerchants($product_id = 0) {
		
		 $sql="SELECT * FROM " . DB_PREFIX . "merchant m
			  
			  LEFT JOIN " . DB_PREFIX . "merchant_description md ON (m.merchant_id = md.merchant_id) 
			  WHERE  md.language_id = '" . (int)$this->config->get('config_language_id')  . "'  AND m.status = '1'  
			  ORDER BY md.name";			
	  // print $sql;exit;
		
		$query = $this->db->query($sql);

		return $query->rows;
	}
	
	public function getServicesByMerchantId($merchant_id){
		
			$sql = "select pd.name, pd.description, mp.product_desc as special_desc, mp.duration, mp.price from " . DB_PREFIX . "merchant_products mp
			LEFT JOIN " . DB_PREFIX . "product_description pd ON (mp.product_id = pd.product_id) 
			 WHERE mp.merchant_id = '" . (int)$merchant_id . "'	AND pd.language_id = '" . (int)$this->config->get('config_language_id')  . "'";
			
			$query = $this->db->query($sql);
			  
			 return $query->rows;
			
	}
	
	public function getServicesMerchantWise(){
		
			$sql = "select * from " . DB_PREFIX . "product p
			LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) 
			 WHERE pd.language_id = '" . (int)$this->config->get('config_language_id')  . "'";
			
			$query = $this->db->query($sql);
			  
			 return $query->rows;
			
	}
	
	public function getMerchant($merchant_id = 0) {
		
		$sql="SELECT * FROM " . DB_PREFIX . "merchant m
			  LEFT JOIN " . DB_PREFIX . "merchant_description md ON (m.merchant_id = md.merchant_id) 
			  WHERE m.merchant_id = '" . (int)$merchant_id . "'
			  AND md.language_id = '" . (int)$this->config->get('config_language_id')  . "' 
			 
			  AND m.status = '1' GROUP BY m.merchant_id
			  
			  ORDER BY m.sort_order"; 	
			  
			 //print $sql;exit;
		
		 	 $query = $this->db->query($sql);
			  
			 return $query->row;
		
	
	}
	
	
	
	
	
	public function getMerchantsByProuctId($product_id = 0) {
		
		 $sql="SELECT * FROM " . DB_PREFIX . "merchant m 
			  LEFT JOIN " . DB_PREFIX . "merchant_description md ON (m.merchant_id = md.merchant_id) 
			  LEFT JOIN " . DB_PREFIX . "merchant_products mp ON (m.merchant_id = mp.merchant_id) 
			  WHERE mp.product_id = '" . (int)$product_id . "'
			  AND md.language_id = '" . (int)$this->config->get('config_language_id')  . "'  
			  AND md.city_id = '" . (int)$this->session->data['city_id'] . "'  
			  AND m.status = '1' 
			  ORDER BY m.sort_order";			
	  //print $sql;exit;
		
		$query = $this->db->query($sql);

		return $query->rows;
	}
	
	
	
	public function getDiscounts($merchant_id = 0 , $dat ) {
		
		
		
		$day = strtolower(date('D', strtotime($dat))).'_percentage';
		$seats = strtolower(date('D', strtotime($dat))).'_packs';
			
		$sql="SELECT merchant_discount_id, merchant_time,".$seats." as seats,".$day." as percentage,sort_order FROM " . DB_PREFIX . "merchant_discount md
			  
			  WHERE md.merchant_id = '" . (int)$merchant_id . "'
			   
			  ORDER BY md.sort_order ASC ";			
			  
	  	// print $sql;exit;
		
		$query = $this->db->query($sql);

		return $query->rows;
	}
	
	public function getDiscountsByProduct_id($product_id = 0, $merchant_id) {
			
		$sql="SELECT * FROM " . DB_PREFIX . "merchant_service_wise_discount mswd
			  
			  WHERE mswd.merchant_id = '" . (int)$merchant_id . "' AND mswd.service_id = '" . (int)$product_id . "' 
			   
			  ORDER BY mswd.sort_order ASC ";			
			  
	  	// print $sql;exit;
		
		$query = $this->db->query($sql);

		return $query->rows;
	}
	
	
	
	
	
	public function getProductsByMerchantID($merchant_id = 0) {
			
		$sql="SELECT * FROM " . DB_PREFIX . "merchant_products pd
		
		 	  LEFT JOIN " . DB_PREFIX . "product p ON (mp.merchant_id = m.merchant_id) 	
			  
			  WHERE md.merchant_id = '" . (int)$merchant_id . "'
			   
			  ORDER BY md.sort_order ASC ";			
			  
	  	// print $sql;exit;
		
		$query = $this->db->query($sql);

		return $query->rows;
	}
	
	

	public function getCategories($parent_id = 0) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.parent_id = '" . (int)$parent_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "'  AND c.status = '1' ORDER BY c.sort_order, LCASE(cd.name)");

		return $query->rows;
	}

	public function getCategoryFilters($category_id) {
		$implode = array();

		$query = $this->db->query("SELECT filter_id FROM " . DB_PREFIX . "category_filter WHERE category_id = '" . (int)$category_id . "'");

		foreach ($query->rows as $result) {
			$implode[] = (int)$result['filter_id'];
		}

		$filter_group_data = array();

		if ($implode) {
			$filter_group_query = $this->db->query("SELECT DISTINCT f.filter_group_id, fgd.name, fg.sort_order FROM " . DB_PREFIX . "filter f LEFT JOIN " . DB_PREFIX . "filter_group fg ON (f.filter_group_id = fg.filter_group_id) LEFT JOIN " . DB_PREFIX . "filter_group_description fgd ON (fg.filter_group_id = fgd.filter_group_id) WHERE f.filter_id IN (" . implode(',', $implode) . ") AND fgd.language_id = '" . (int)$this->config->get('config_language_id') . "' GROUP BY f.filter_group_id ORDER BY fg.sort_order, LCASE(fgd.name)");

			foreach ($filter_group_query->rows as $filter_group) {
				$filter_data = array();

				$filter_query = $this->db->query("SELECT DISTINCT f.filter_id, fd.name FROM " . DB_PREFIX . "filter f LEFT JOIN " . DB_PREFIX . "filter_description fd ON (f.filter_id = fd.filter_id) WHERE f.filter_id IN (" . implode(',', $implode) . ") AND f.filter_group_id = '" . (int)$filter_group['filter_group_id'] . "' AND fd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY f.sort_order, LCASE(fd.name)");

				foreach ($filter_query->rows as $filter) {
					$filter_data[] = array(
						'filter_id' => $filter['filter_id'],
						'name'      => $filter['name']
					);
				}

				if ($filter_data) {
					$filter_group_data[] = array(
						'filter_group_id' => $filter_group['filter_group_id'],
						'name'            => $filter_group['name'],
						'filter'          => $filter_data
					);
				}
			}
		}

		return $filter_group_data;
	}

	public function getCategoryLayoutId($category_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_to_layout WHERE category_id = '" . (int)$category_id . "' AND store_id = '" . (int)$this->config->get('config_store_id') . "'");

		if ($query->num_rows) {
			return $query->row['layout_id'];
		} else {
			return 0;
		}
	}

	public function getTotalCategoriesByCategoryId($parent_id = 0) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.parent_id = '" . (int)$parent_id . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND c.status = '1'");

		return $query->row['total'];
	}
	
	
	public function getTotalMerchants($data = array()) {
		$sql = "SELECT COUNT(DISTINCT m.merchant_id) AS total FROM " . DB_PREFIX . "merchant m";
		$sql .= " LEFT JOIN " . DB_PREFIX . "merchant_description md ON (m.merchant_id = md.merchant_id) "; 
		$sql .= " LEFT JOIN " . DB_PREFIX . "merchant_products mp ON (m.merchant_id = mp.merchant_id) ";
		$sql .= " LEFT JOIN " . DB_PREFIX . "product_to_category p2c ON (mp.product_id = p2c.product_id) ";
		$sql .= " WHERE md.language_id = '" . (int)$this->config->get('config_language_id') . "' AND m.status = '1'";
		
		if (!empty($data['filter_category_id'])) {
			$sql .= " AND p2c.category_id = '".$data['filter_category_id']."'";
		}
		   
		//print $sql."</br>";
		
		$query = $this->db->query($sql);

		return $query->row['total'];
	}
}