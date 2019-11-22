$(document).ready(function(){
    $('#login').on('click',function(){
        var user = $('#user').val();
        var pass = $('#pass').val();

        user ==""? setError('#user') : setSuccess('#user');
        pass ==""? setError('#pass') : setSuccess('#pass');
    })
})
function setSuccess(success){
    $(success).addClass('border-success').removeClass('border-danger');
}
function setError (error){
    $(error).addClass('border-danger').removeClass('border-success');
}