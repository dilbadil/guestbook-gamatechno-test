@extends ('main')

@section ('scripts')
<script src="js/guests.js"></script>
@endsection

@section ('content')
<!-- Page Heading -->
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">
            Dashboard
        </h1>
        <div class="row">
        	<div class="col-lg-6">
		        <form>
					<div class="form-group input-group">
		                <input type="text" class="form-control">
		                <span class="input-group-btn"><button class="btn btn-default" type="button"><i class="fa fa-search"></i></button></span>
		            </div>
		        </form>
        	</div>
        	<div class="col-lg-6">
        		<button onclick="addGuest()" style="float:right;" class="btn btn-default">Tambah Data</button>
        	</div>
        </div>
    </div>
</div>
<!-- /.row -->

<div class="row">
    <div class="col-lg-12">
        <h2>Guests</h2>
        <div class="table-responsive">
            <table id="table-guests" class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Nama</th>
                        <th>Institusi</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($guests as $guest)
                        <tr>
                            <td>{{ $guest->nama }}</td>
                            <td>{{ $guest->institusi }}</td>
                            <td>
                                <button id="button-updatestatus" onclick="updateStatus('{{ $guest->id }}', this)" type="button" class="btn btn-{{ $guest->hadir ? 'warning' : 'success' }}">{{ $guest->hadir ? "Absen" : "Hadir" }}</button>
                                <button type="button" class="btn btn-default">Edit</button>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
<!-- /.row -->
<div id="add-guest-dialog" style="display:none;" title="Add Guest">
 <div class="form-group">
    <label class="control-label" for="add-guest-input-nama">Nama</label>
    <input type="text" class="form-control" id="add-guest-input-nama" />
    <br />

    <label class="control-label" for="add-guest-input-institusi">Institusi</label>
    <input type="text" class="form-control" id="add-guest-input-institusi" />

    <br />
    <br />

    <button onclick="doAddGuest()" class="btn btn-primary">Submit</button>
    <button onclick="$('.ui-dialog-titlebar-close').click();" class="btn btn-default">Cancel</button>
</div> 
</div>
@endsection
