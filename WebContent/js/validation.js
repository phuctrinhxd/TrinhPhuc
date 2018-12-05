
$(function(){
	$.validator.setDefaults({
		errorClass:'help-block',
		highlight: function(element){
			$(element)
				.closest('.form-group')
				.addClass('has-error');
		},
		unhighlight: function(element){
			$(element)
				.closest('.form-group')
				.removeClass('has-error');
		}
		
	});
	$("#register-form").validate({
		rules:{
			name:{
				required: true,
			},
			email:{
				required:true,
				email: true
			},
			numberphone:{
				required:true,
				minlength:10
			},
			addresshome:{
				required:true,
			},
			username:{
				required:true,
				nowhitespace: true
			},
			password: {
				required:true,
				minlength: 6,
				maxlength: 45,
			},
			password2:{
				required: true,
				equalTo:"#password1"
			}
		},	
		messages:{
			name:{
				required: 'Hãy nhập họ và tên của bạn.',
			},
			email:{
				required: 'Hãy nhập địa chỉ email.',
				email:'Vui lòng nhập đúng email.'
			},
			numberphone:{
				required: 'Hãy nhập số điện thoại.',
				minlength: 'Số điện thoại của bạn ngắn quá.'
			},
			addresshome:{
				required:'Hãy nhập địa chỉ nhà bạn.'
			},
			username:{
				required: 'Hãy nhập tên đăng nhập.',
				nowhitespace:'Vui lòng nhập tên đăng nhập không có dấu cách.'
			},
			password:{
				required: 'Hãy nhập mật khẩu của bạn.',
				minlength:'Mật khẩu ít nhất 6 ký tự',
				maxlength: 'Mật khẩu quá dài',
			},
			password2:{
				required: 'Vui lòng xác nhận lại mật khẩu.',
				equalTo: 'Xác nhận không đúng mật khẩu.'
			}
		}
	});
	$("#forgot-form").validate({
		rules:{
			email:{
				required:true,
				email: true
			},
			numberphone:{
				required:true,
				minlength:10
			},
			username:{
				required:true,
				nowhitespace: true
			},
			password: {
				required:true,
				minlength: 6
			},
			password2:{
				required: true,
				equalTo:"#password"
			}
		},	
		messages:{
			email:{
				required: 'Hãy nhập địa chỉ email.',
				email:'Vui lòng nhập đúng email.'
			},
			numberphone:{
				required: 'Hãy nhập số điện thoại.',
				minlength: 'Số điện thoại của bạn ngắn quá.'
			},
			username:{
				required: 'Hãy nhập tên đăng nhập.',
				nowhitespace:'Vui lòng nhập tên đăng nhập không có dấu cách.'
			},
			password:{
				required: 'Hãy nhập mật khẩu của bạn.',
				minlength:'Mật khẩu quá ngắn'
			},
			password2:{
				required: 'Vui lòng xác nhận lại mật khẩu.',
				equalTo: 'Xác nhận không đúng mật khẩu.'
			}
		}
	});
	$("#LienHe-form").validate({
		rules:{
			name:{
				required: true,

			},
			email:{
				required:true,
				email: true
			},
			subject:{
				required:true,
			},
			comment:{
				required:true,
			}
		},
		messages:{
			name:{
				required: 'Hãy nhập họ và tên của bạn.',

			},
			email:{
				required: 'Hãy nhập địa chỉ email.',
				email:'Vui lòng nhập đúng email.'
			},
			subject:{
				required:'Nhập tên tiêu đề',

			},
			comment:{
				required:'Nhập vào nôi dung cần hổ trợ.',
				
			}
		}
			
	});
	
	$("#login-admin").validate({
		rules:{
			username:{
				required: true,

			},
			pass:{
				required:true,
			},
		},
		messages:{
			name:{
				required: 'Vui lòng nhập Username.'

			},
			pass:{
				required: 'Vui lòng nhập password.'
			},
		}		
	});
	$("#login-form").validate({
		rules:{
			username:{
				required: true,
			},
			password:{
				required:true,
			},
		},
		messages:{
			username:{
				required: 'Vui lòng nhập tên đăng nhập.'

			},
			password:{
				required: 'Vui lòng nhập mật khẩu.'
			},
		}		
	});
	$("#ttcn-fomr").validate({
		rules:{
			name:{
				required: true,
			},
			email:{
				required:true,
			},
			numberphone:{
				required:true,
			},
			addresshome:{
				required:true,
			},
		},
		messages:{
			name:{
				required: 'Vui lòng điền họ tên',
			},
			email:{
				required: 'Vui lòng điền email',
			},
			numberphone:{
				required: 'Vui lòng điền số điện thoại',
			},
			addresshome:{
				required: 'Vui lòng điền địa chỉ',
			},
		}		
	});
	$("#infomation-order-form").validate({
		rules:{
			name:{
				required: true,
			},
			numberphone:{
				required:true,
			},
			addresshome:{
				required:true,
			},
		},
		messages:{
			name:{
				required: 'Vui lòng điền họ tên',
			},
			numberphone:{
				required: 'Vui lòng điền số điện thoại',
			},
			addresshome:{
				required: 'Vui lòng điền địa chỉ',
			},
		}		
	});
	$("#change-pass-form").validate({
		rules:{
			oldpassword: {
				required:true,
				minlength: 6,
			},
			password1: {
				required:true,
				minlength: 6,
				maxlength: 45,
			},
			password2:{
				required: true,
				equalTo:"#password1",
			},
		},	
		messages:{
			oldpassword: {
				required: 'Hãy điền mật khẩu cũ',
				minlength: 'Mật khẩu quá ngắn',
			},
			password1:{
				required: 'Hãy nhập mật khẩu của bạn.',
				minlength:'Mật khẩu ít nhất 6 ký tự',
				maxlength: 'Mật khẩu quá dài'
			},
			password2:{
				required: 'Vui lòng xác nhận lại mật khẩu.',
				equalTo: 'Xác nhận không đúng mật khẩu.',
			}
		}
	});
});

