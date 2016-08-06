<?php
class ControllerCommonHome extends Controller {
	public function index() {  
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}
                
                $this->load->model('extension/module');
                
                $module_id = 28;
                
                $setting_info = $this->model_extension_module->getModule($module_id);
                // print '<pre>' ;print_r($setting_info);exit;
               // $module_data = $this->load->controller('common/featured', $setting_info);
                
		//print_r($module_data);
                
		$data['content_top'] = $this->load->controller('common/content_top');
                $data['home_category'] = $this->load->controller('common/home_category');
                $data['home_services'] = $this->load->controller('common/home_services', $setting_info);
                $data['home_media'] = $this->load->controller('common/home_media');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
		$this->response->setOutput($this->load->view('common/home', $data));
	}
}