<?php
class ModelLocalisationOrderStatus extends Model {
	public function addOrderStatus($data) {
		foreach ($data['order_status'] as $language_id => $value) {
			if (isset($order_status_id)) {
				

                 if(isset($value['order_status_color']))

                 {

                $this->db->query("INSERT INTO " . DB_PREFIX . "order_status SET order_status_id = '" . (int)$order_status_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "',order_status_color = '" . $this->db->escape($value['order_status_color']) . "'");

                 }

                 else{



                $this->db->query("INSERT INTO " . DB_PREFIX . "order_status SET order_status_id = '" . (int)$order_status_id . "', language_id = '" . (int)$language_id . "',name = '" . $this->db->escape($value['name']) . "'");

                }

        
			} else {
				

                if(isset($value['order_status_color']))

                {

				$this->db->query("INSERT INTO " . DB_PREFIX . "order_status SET language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "',order_status_color = '" . $this->db->escape($value['order_status_color']) . "'");

                }

                else{

                    $this->db->query("INSERT INTO " . DB_PREFIX . "order_status SET language_id = '" . (int)$language_id . "',name = '" . $this->db->escape($value['name']) . "'");

                }

        

				$order_status_id = $this->db->getLastId();
			}
		}

		$this->cache->delete('order_status');
	}

	public function editOrderStatus($order_status_id, $data) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "order_status WHERE order_status_id = '" . (int)$order_status_id . "'");

		foreach ($data['order_status'] as $language_id => $value) {
			

                 if(isset($value['order_status_color']))

                 {

                $this->db->query("INSERT INTO " . DB_PREFIX . "order_status SET order_status_id = '" . (int)$order_status_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "',order_status_color = '" . $this->db->escape($value['order_status_color']) . "'");

                 }

                 else{



                $this->db->query("INSERT INTO " . DB_PREFIX . "order_status SET order_status_id = '" . (int)$order_status_id . "', language_id = '" . (int)$language_id . "',name = '" . $this->db->escape($value['name']) . "'");

                }

        
		}

		$this->cache->delete('order_status');
	}

	public function deleteOrderStatus($order_status_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "order_status WHERE order_status_id = '" . (int)$order_status_id . "'");

		$this->cache->delete('order_status');
	}

	public function getOrderStatus($order_status_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "order_status WHERE order_status_id = '" . (int)$order_status_id . "' AND language_id = '" . (int)$this->config->get('config_language_id') . "'");

		return $query->row;
	}

	public function getOrderStatuses($data = array()) {
		if ($data) {
			$sql = "SELECT * FROM " . DB_PREFIX . "order_status WHERE language_id = '" . (int)$this->config->get('config_language_id') . "'";

			$sql .= " ORDER BY name";

			if (isset($data['order']) && ($data['order'] == 'DESC')) {
				$sql .= " DESC";
			} else {
				$sql .= " ASC";
			}

			if (isset($data['start']) || isset($data['limit'])) {
				if ($data['start'] < 0) {
					$data['start'] = 0;
				}

				if ($data['limit'] < 1) {
					$data['limit'] = 20;
				}

				$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
			}

			$query = $this->db->query($sql);

			return $query->rows;
		} else {
			$order_status_data = $this->cache->get('order_status.' . (int)$this->config->get('config_language_id'));

			if (!$order_status_data) {
				$query = $this->db->query("SELECT order_status_id, name FROM " . DB_PREFIX . "order_status WHERE language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY name");

				$order_status_data = $query->rows;

				$this->cache->set('order_status.' . (int)$this->config->get('config_language_id'), $order_status_data);
			}

			return $order_status_data;
		}
	}

	public function getOrderStatusDescriptions($order_status_id) {
		$order_status_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "order_status WHERE order_status_id = '" . (int)$order_status_id . "'");

		foreach ($query->rows as $result) {
			

                $order_status_data[$result['language_id']] = array('name' => $result['name'],'order_status_color' =>  (isset($result['order_status_color']) ? $result['order_status_color'] : ""));

        
		}

		return $order_status_data;
	}



                public function getOrderstatuscolor($order_status_id)

               {

               $querycheck=$this->db->query("SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = '". DB_DATABASE. "' AND TABLE_NAME = '" . DB_PREFIX . "order_status' AND COLUMN_NAME='order_status_color'");

               if($querycheck->row){

               $query = $this->db->query("SELECT order_status_color FROM " . DB_PREFIX . "order_status WHERE order_status_id = '" . (int)$order_status_id . "' AND language_id = '" . (int)$this->config->get('config_language_id') . "'");

               return $query->row?$query->row['order_status_color']:'';

               }

               return "";

               }

        
	public function getTotalOrderStatuses() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "order_status WHERE language_id = '" . (int)$this->config->get('config_language_id') . "'");

		return $query->row['total'];
	}
}