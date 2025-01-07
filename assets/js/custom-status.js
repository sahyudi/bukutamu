"use strict";
// swal view alert
const success = (title = null, text, icon = false, buttons = false, timer = null) => {
	swal({
		title: title,
		text: text,
		icon: icon,
		buttons: buttons,
		timer: timer,
		closeOnClickOutside: false,
		closeOnEsc: false,
		allowOutsideClick: false
	});
}
const failed = (title = null, text, icon = false, buttons = false, timer = null) => {
	swal({
		title: title,
		text: text,
		icon: icon,
		buttons: buttons,
		timer: timer,
		closeOnClickOutside: false,
		closeOnEsc: false,
		allowOutsideClick: false
	});
}
const cancle = (text, icon = null, buttons = false, timer = null) => {
	swal({
		text: text,
		icon: icon,
		buttons: buttons,
		timer: timer,
		closeOnClickOutside: false,
		closeOnEsc: false,
		allowOutsideClick: false
	});
}
const successContent = (title, content, icon = null, buttons = false, timer = null) => {
	const element = document.createElement('span')
	element.innerHTML = content
	swal({
		title: title,
		content: element,
		icon: icon,
		buttons: buttons,
		closeOnClickOutside: false,
		closeOnEsc: false,
		allowOutsideClick: false
	})
}
// error response
const errorResponse = (xhr, status, error) => {
	let errorStatus = ''
	if (xhr.status === 0) {
		errorStatus = 'Not connect.\n Verify Network.'
	} else if (xhr.status == 404) {
		errorStatus = 'Requested page not found. [404]'
	} else if (xhr.status == 500) {
		errorStatus = 'Internal Server Error [500].'
	} else if (status === 'parsererror') {
		errorStatus = 'Requested JSON parse failed.'
	} else if (status === 'timeout') {
		errorStatus = 'Time out error.'
	} else if (status === 'abort') {
		errorStatus = 'Ajax request aborted.'
	} else {
		errorStatus = 'Uncaught Error.\n' + xhr.responseText
	}
	return errorStatus;
}