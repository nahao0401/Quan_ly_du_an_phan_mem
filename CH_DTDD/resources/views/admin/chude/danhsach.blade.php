@extends('layouts.app')

@section('content')
	<div class="card">
		<div class="card-header">Chủ đề</div>
		<div class="card-body table-responsive">
			<p><a href="{{ route('admin.chude.them') }}" class="btn btn-info"></i><i class="bi bi-plus"></i>Thêm mới</a></p>
			<table class="table table-bordered table-hover table-sm mb-0">
				<thead>
					<tr>
						<th style="vertical-align: middle;text-align: center" width="5%">Id</th>
						<th style="vertical-align: middle;text-align: center" width="45%">Tên chủ đề</th>
						<th style="vertical-align: middle;text-align: center" width="40%">Tên chủ đề không dấu</th>
						<th style="vertical-align: middle;text-align: center" width="5%">Sửa</th>
						<th style="vertical-align: middle;text-align: center" width="5%">Xóa</th> 
					</tr>
				</thead>
			<tbody>
				@foreach($chude as $value)
					<tr>
						<td style="vertical-align: middle;text-align: center" >{{ $loop->iteration }}</td>
						<td style="vertical-align: middle;text-align: center">{{ $value->tenchude }}</td>
						<td style="vertical-align: middle;text-align: center">{{ $value->tenchude_slug }}</td>
						<td style="vertical-align: middle;text-align: center" class="text-center">
							<a href="{{ route('admin.chude.sua', ['id' => $value->id]) }}">
								<i class="bi bi-pencil-square"></i>
							</a>
						</td>
						<td style="vertical-align: middle;text-align: center" class="text-center">
							<a href="{{ route('admin.chude.xoa', ['id' => $value->id]) }}" onclick="return confirm('Bạn có muốn xóa chủ đề {{ $value->tenchude }} không?')">
								<i class="bi bi-trash text-danger"></i>
							</a>
						</td>
					</tr>
				@endforeach
				</tbody>
			</table>
		</div>
	</div>
@endsection