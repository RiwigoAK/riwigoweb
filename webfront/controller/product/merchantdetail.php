<?php
class ControllerProductMerchantdetail extends Controller {
	private $error = array();

	public function index() {
		
		$this->load->language('product/merchant');
		$this->load->model('catalog/category');
		$this->load->model('catalog/manufacturer');
		$this->load->model('localisation/country');
		$this->load->model('localisation/zone');
		$this->load->model('localisation/city');
		$this->load->model('localisation/location');
		 
		if (isset($this->request->get['search']) || isset($this->request->get['tag'])) {
			$url = '';

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . $this->request->get['search'];
			}

			if (isset($this->request->get['tag'])) {
				$url .= '&tag=' . $this->request->get['tag'];
			}

			if (isset($this->request->get['description'])) {
				$url .= '&description=' . $this->request->get['description'];
			}

			if (isset($this->request->get['category_id'])) {
				$url .= '&category_id=' . $this->request->get['category_id'];
			}

			if (isset($this->request->get['sub_category'])) {
				$url .= '&sub_category=' . $this->request->get['sub_category'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_search'),
				'href' => $this->url->link('product/search', $url)
			);
		}

		if (isset($this->request->get['merchant_id'])) {
			$merchant_id = (int)$this->request->get['merchant_id'];
		} else {
			$merchant_id = 0;
		}

		$this->load->model('catalog/merchant');

		$merchant_info = $this->model_catalog_merchant->getMerchant($merchant_id);
		
		//print '<pre>'; print_r($merchant_info);exit;

		if ($merchant_info) {
			$url = '';

			 
			$this->document->setTitle($merchant_info['meta_title']);
			$this->document->setDescription($merchant_info['meta_description']);
			$this->document->setKeywords($merchant_info['meta_keyword']);
			
			/*$this->document->addLink($this->url->link('product/product', 'product_id=' . $this->request->get['product_id']), 'canonical');
			$this->document->addScript('catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js');
			$this->document->addStyle('catalog/view/javascript/jquery/magnific/magnific-popup.css');
			$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/moment.js');
			$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js');
			$this->document->addStyle('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css');*/

			$data['heading_title'] = $merchant_info['name'];

			$data['text_select'] = $this->language->get('text_select');
			$data['text_manufacturer'] = $this->language->get('text_manufacturer');
			$data['text_model'] = $this->language->get('text_model');
			$data['text_reward'] = $this->language->get('text_reward');
			$data['text_points'] = $this->language->get('text_points');
			$data['text_stock'] = $this->language->get('text_stock');
			$data['text_discount'] = $this->language->get('text_discount');
			$data['text_tax'] = $this->language->get('text_tax');
			$data['text_option'] = $this->language->get('text_option');
			$data['text_minimum'] = sprintf($this->language->get('text_minimum'), $merchant_info['minimum']);
			$data['text_write'] = $this->language->get('text_write');
			$data['text_login'] = sprintf($this->language->get('text_login'), $this->url->link('account/login', '', true), $this->url->link('account/register', '', true));
			$data['text_note'] = $this->language->get('text_note');
			$data['text_tags'] = $this->language->get('text_tags');
			$data['text_related'] = $this->language->get('text_related');
			$data['text_payment_recurring'] = $this->language->get('text_payment_recurring');
			$data['text_loading'] = $this->language->get('text_loading');

			$data['entry_qty'] = $this->language->get('entry_qty');
			$data['entry_name'] = $this->language->get('entry_name');
			$data['entry_review'] = $this->language->get('entry_review');
			$data['entry_rating'] = $this->language->get('entry_rating');
			$data['entry_good'] = $this->language->get('entry_good');
			$data['entry_bad'] = $this->language->get('entry_bad');
			$data['entry_about'] = $this->language->get('entry_about');
			$data['entry_address'] = $this->language->get('entry_address');
			$data['entry_atmosphere'] = $this->language->get('entry_atmosphere');
			
			$data['entry_facilities'] = $this->language->get('entry_facilities');
			$data['entry_spoken_language'] = $this->language->get('entry_spoken_language');
			$data['entry_opening_time'] = $this->language->get('entry_opening_time');
			

			$data['button_cart'] = $this->language->get('button_cart');
			$data['button_wishlist'] = $this->language->get('button_wishlist');
			$data['button_compare'] = $this->language->get('button_compare');
			$data['button_upload'] = $this->language->get('button_upload');
			$data['button_continue'] = $this->language->get('button_continue');

			$this->load->model('catalog/review');

			$data['tab_detail'] = $this->language->get('tab_detail');
			$data['tab_attribute'] = $this->language->get('tab_attribute');
			$data['tab_recommanded'] = $this->language->get('tab_recommanded');
			
			
			//$data['tab_review'] = sprintf($this->language->get('tab_review'), $merchant_info['reviews']);

			$data['merchant_id'] = (int)$this->request->get['merchant_id'];
			
			$data['name'] = $merchant_info['name'];
			$data['address'] = $merchant_info['address'];
			
			$data['location'] =  $this->model_localisation_location->getLocationName($merchant_info['location_id']);
			$data['city'] = $this->model_localisation_city->getCityName($merchant_info['city_id']);
			$data['zone'] = $this->model_localisation_zone->getZoneName($merchant_info['zone_id']);
			$data['country'] = $this->model_localisation_country->getCountryName($merchant_info['country_id']);
			
			$data['zip'] = $merchant_info['zip'];
			$data['phone'] = $merchant_info['phone'];
			$data['mobile'] = $merchant_info['mobile'];
			$data['email'] = $merchant_info['email'];
			$data['website'] = $merchant_info['website'];
			$data['contact_person'] = $merchant_info['contact_person'];
			$data['contact_person_position'] = $merchant_info['contact_person_position'];
			$data['viewed'] = $merchant_info['viewed'];
			$data['reserved'] = $merchant_info['reserved'];
			$data['price_level'] = ($merchant_info['price_level']+$merchant_info['price_level'])*10;
			$data['from_opeining_hours'] = $merchant_info['from_opeining_hours'];
			$data['to_opening_hours'] = $merchant_info['to_opening_hours'];
			$data['latitude'] = $merchant_info['latitude'];
			$data['longitude'] = $merchant_info['longitude'];
			$data['no_of_staff'] = $merchant_info['no_of_staff'];
			$data['capacity'] = $merchant_info['capacity'];
			$data['rating'] = ($merchant_info['rating']+$merchant_info['rating'])*10; 
			$data['description'] = html_entity_decode($merchant_info['description'], ENT_QUOTES, 'UTF-8');
			$data['terms'] = html_entity_decode($merchant_info['terms'], ENT_QUOTES, 'UTF-8');
			
			$data['atmosphere'] =$this->model_catalog_merchant->getMerchantAtmosphere($this->request->get['merchant_id']);
			
			$data['facilities'] =$this->model_catalog_merchant->getMerchantFacilities($this->request->get['merchant_id']);
			
			$data['spoken_language'] =$this->model_catalog_merchant->getMerchantSpokenLangauge($this->request->get['merchant_id']);
			
			//print_r($data['facilities']);exit;
			 
			$this->load->model('tool/image');

			if ($merchant_info['image'] && file_exists(DIR_IMAGE.$merchant_info['image'])) {
				$data['popup'] = $this->model_tool_image->resize($merchant_info['image'],500,380);
			} else {
				$data['popup'] = $this->model_tool_image->resize('placeholder.png', 500,380);;
			}

			if ($merchant_info['image'] && file_exists(DIR_IMAGE.$merchant_info['image'])) {
				$data['firstImage'] = $this->model_tool_image->resize($merchant_info['image'],1024,750);
			} else {
				$data['firstImage'] = $this->model_tool_image->resize('placeholder.png', 500,380);;
			}

			$data['images'] = array();

			$results = $this->model_catalog_merchant->getMerchantImages($this->request->get['merchant_id']);

			foreach ($results as $result) {
				if ($result['image'] && file_exists(DIR_IMAGE.$result['image'])) {
					$data['images'][] = array(
						'popup' => $this->model_tool_image->resize($result['image'], 500,380),
						'thumb' => $this->model_tool_image->resize($result['image'], 1024,750)
					);
				}else{
					$data['images'][] = array(
						'popup' => $this->model_tool_image->resize('placeholder.png', 500,380),
						'thumb' => $this->model_tool_image->resize('placeholder.png', 1024,750)
					);
				
				}
			}
			
			$product_info = $this->model_catalog_merchant->getAllProductsByMerchantId($merchant_id);
			
			
			foreach ($product_info as $result) {
						if ($result['image'] && file_exists(DIR_IMAGE.$result['image'])) {
								$image = $this->model_tool_image->resize($result['image'], 500, 308);
							} else {
								$image = $this->model_tool_image->resize('placeholder.png', 500, 308);
						}
		
						$discount = $this->model_catalog_merchant->getDiscountsByProduct_id($result['product_id'], $merchant_id);
						
						$seconds = time();
						
						$rounded_seconds = round($seconds / (30 * 60)) * (30 * 60);						
						 
						$json['services'][] = array(
							'service_id'  		=> $result['product_id'], 
							'name'  		    => $result['name'],
							'thumb'       		=> $image,
							'price'       		=> $result['price'],
							'duration'          => $result['duration'],
							'name'        		=> $result['name'],
							'product_desc'      => $result['product_desc'],
							'description' 		=> strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')) ,
							'viewed'       		=> $result['viewed']
							//'discount'    		=> $discount
						);
					}
			
			//print '<pre>'; print_r($product_info);exit;
			 

			$this->model_catalog_merchant->updateViewed($this->request->get['merchant_id']);

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('product/merchantdetail', $data));
		} else {
			$url = '';

			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['manufacturer_id'])) {
				$url .= '&manufacturer_id=' . $this->request->get['manufacturer_id'];
			}

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . $this->request->get['search'];
			}

			if (isset($this->request->get['tag'])) {
				$url .= '&tag=' . $this->request->get['tag'];
			}

			if (isset($this->request->get['description'])) {
				$url .= '&description=' . $this->request->get['description'];
			}

			if (isset($this->request->get['category_id'])) {
				$url .= '&category_id=' . $this->request->get['category_id'];
			}

			if (isset($this->request->get['sub_category'])) {
				$url .= '&sub_category=' . $this->request->get['sub_category'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_error'),
				'href' => $this->url->link('product/product', $url . '&product_id=' . $product_id)
			);

			$this->document->setTitle($this->language->get('text_error'));

			$data['heading_title'] = $this->language->get('text_error');

			$data['text_error'] = $this->language->get('text_error');

			$data['button_continue'] = $this->language->get('button_continue');

			$data['continue'] = $this->url->link('common/home');

			$this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('error/not_found', $data));
		}
	}

	public function review() {
		$this->load->language('product/product');

		$this->load->model('catalog/review');

		$data['text_no_reviews'] = $this->language->get('text_no_reviews');

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		$data['reviews'] = array();

		$review_total = $this->model_catalog_review->getTotalReviewsByProductId($this->request->get['product_id']);

		$results = $this->model_catalog_review->getReviewsByProductId($this->request->get['product_id'], ($page - 1) * 5, 5);

		foreach ($results as $result) {
			$data['reviews'][] = array(
				'author'     => $result['author'],
				'text'       => nl2br($result['text']),
				'rating'     => (int)$result['rating'],
				'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added']))
			);
		}

		$pagination = new Pagination();
		$pagination->total = $review_total;
		$pagination->page = $page;
		$pagination->limit = 5;
		$pagination->url = $this->url->link('product/product/review', 'product_id=' . $this->request->get['product_id'] . '&page={page}');

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($review_total) ? (($page - 1) * 5) + 1 : 0, ((($page - 1) * 5) > ($review_total - 5)) ? $review_total : ((($page - 1) * 5) + 5), $review_total, ceil($review_total / 5));

		$this->response->setOutput($this->load->view('product/review', $data));
	}

	public function write() {
		$this->load->language('product/product');

		$json = array();

		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 25)) {
				$json['error'] = $this->language->get('error_name');
			}

			if ((utf8_strlen($this->request->post['text']) < 25) || (utf8_strlen($this->request->post['text']) > 1000)) {
				$json['error'] = $this->language->get('error_text');
			}

			if (empty($this->request->post['rating']) || $this->request->post['rating'] < 0 || $this->request->post['rating'] > 5) {
				$json['error'] = $this->language->get('error_rating');
			}

			// Captcha
			if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('review', (array)$this->config->get('config_captcha_page'))) {
				$captcha = $this->load->controller('captcha/' . $this->config->get('config_captcha') . '/validate');

				if ($captcha) {
					$json['error'] = $captcha;
				}
			}

			if (!isset($json['error'])) {
				$this->load->model('catalog/review');

				$this->model_catalog_review->addReview($this->request->get['product_id'], $this->request->post);

				$json['success'] = $this->language->get('text_success');
			}
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}

	public function getRecurringDescription() {
		$this->load->language('product/product');
		$this->load->model('catalog/product');

		if (isset($this->request->post['product_id'])) {
			$product_id = $this->request->post['product_id'];
		} else {
			$product_id = 0;
		}

		if (isset($this->request->post['recurring_id'])) {
			$recurring_id = $this->request->post['recurring_id'];
		} else {
			$recurring_id = 0;
		}

		if (isset($this->request->post['quantity'])) {
			$quantity = $this->request->post['quantity'];
		} else {
			$quantity = 1;
		}

		$merchant_info = $this->model_catalog_product->getProduct($product_id);
		$recurring_info = $this->model_catalog_product->getProfile($product_id, $recurring_id);

		$json = array();

		if ($merchant_info && $recurring_info) {
			if (!$json) {
				$frequencies = array(
					'day'        => $this->language->get('text_day'),
					'week'       => $this->language->get('text_week'),
					'semi_month' => $this->language->get('text_semi_month'),
					'month'      => $this->language->get('text_month'),
					'year'       => $this->language->get('text_year'),
				);

				if ($recurring_info['trial_status'] == 1) {
					$price = $this->currency->format($this->tax->calculate($recurring_info['trial_price'] * $quantity, $merchant_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					$trial_text = sprintf($this->language->get('text_trial_description'), $price, $recurring_info['trial_cycle'], $frequencies[$recurring_info['trial_frequency']], $recurring_info['trial_duration']) . ' ';
				} else {
					$trial_text = '';
				}

				$price = $this->currency->format($this->tax->calculate($recurring_info['price'] * $quantity, $merchant_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);

				if ($recurring_info['duration']) {
					$text = $trial_text . sprintf($this->language->get('text_payment_description'), $price, $recurring_info['cycle'], $frequencies[$recurring_info['frequency']], $recurring_info['duration']);
				} else {
					$text = $trial_text . sprintf($this->language->get('text_payment_cancel'), $price, $recurring_info['cycle'], $frequencies[$recurring_info['frequency']], $recurring_info['duration']);
				}

				$json['success'] = $text;
			}
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}
