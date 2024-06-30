    @extends('layouts.main')

    @section('container')
    <div class="container px-4">
        <div class="bg-white p-5 mt-5 rounded-lg shadow-md">
            <div class="flex items-center justify-between mb-5">
                <h2 class="text-gray-600 font-bold text-lg">Detail Data Barang</h2>
                <a href="/barang" class="bg-gray-600 text-white py-2 px-4 rounded text-sm hover:bg-gray-700">Kembali</a>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                <div class="mt-3">
                    <label class="text-sm text-gray-600" for="kode_barang">Kode Barang</label>
                    <div class="border-2 bg-gray-100 p-2 rounded">
                        <input name="kode_barang" value="{{ $product->kode_barang }}" class="text-black w-full h-full focus:outline-none text-sm bg-transparent" id="kode_barang" type="text" disabled>
                    </div>
                </div>
                <div class="mt-3">
                    <label class="text-sm text-gray-600" for="name">Nama Barang</label>
                    <div class="border-2 bg-gray-100 p-2 rounded">
                        <input name="name" value="{{ $product->name }}" class="text-black w-full h-full focus:outline-none text-sm bg-transparent" id="name" type="text" disabled>
                    </div>
                </div>
                <div class="mt-3">
                    <label class="text-sm text-gray-600" for="price">Harga Barang</label>
                    <div class="border-2 bg-gray-100 p-2 rounded">
                        <input value="Rp.{{ number_format($product->price, 0) }}" name="price" class="text-black text-sm w-full h-full focus:outline-none bg-transparent" id="price" type="text" disabled>
                    </div>
                </div>
                <div class="mt-3">
                    <label class="text-sm text-gray-600" for="room_id">Ruangan</label>
                    <div class="border-2 bg-gray-100 p-2 rounded">
                        <input name="room_id" value="{{ $product->ruangans->name }}" class="text-black w-full h-full focus:outline-none text-sm bg-transparent" id="room_id" type="text" disabled>
                    </div>
                </div>
                <div class="mt-3">
                    <label class="text-sm text-gray-600" for="image">Gambar Barang</label>
                    <div class="border-2 bg-gray-100 p-2 rounded">
                        <img src="{{ asset('storage/foto_barang/' . $product->image) }}" width="200" class="mt-2">
                    </div>
                </div>
                <div class="mt-3">
                    <label class="text-sm text-gray-600" for="stock">Jumlah Barang</label>
                    <div class="border-2 bg-gray-100 p-2 rounded">
                        <input name="stock" value="{{ $product->stock }}" class="text-black w-full h-full focus:outline-none text-sm bg-transparent" id="stock" type="text" disabled>
                    </div>
                </div>
                <div class="mt-3">
                    <label class="text-sm text-gray-600" for="category_id">Kategori Barang</label>
                    <div class="border-2 bg-gray-100 p-2 rounded">
                        <input name="category_id" value="{{ $product->category->name }}" class="text-black w-full h-full focus:outline-none text-sm bg-transparent" id="category_id" type="text" disabled>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endsection
