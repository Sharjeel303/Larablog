@extends('back.layouts.pages-layout')
@section('pageTitle', isset($pageTitle) ? $pageTitle : 'All Posts')
@section('content')

<div class="page-header d-print-none">
    <div class="row align-items-center">
        <div class="col">
            <h2 class="page-title">
                All Posts
            </h2>
        </div>
    </div>
</div>

@livewire('all-posts')

@endsection

@push('scripts')
<script>

    window.addEventListener('deletePost', function(event){
        swal.fire({
            title:event.detail.title,
            imageWidth:48,
            imageHeight:48,
            html:event.detail.html,
            showCloseButton:true,
            showCancelButton:true,
            cancelButtonText:'Cancel',
            confirmButtonText:'Yes, Delete',
            cancelButtonColor:'#d33',
            confirmButtonColor:'#3085d6',
            widht:300,
            allowOutsideClick:false
        }).then(function(result){
            if(result.value){
                window.livewire.emit('deletePostAction', event.detail.id);
            }
        });
    });

</script>
@endpush
