<?php
$create = check_view('invoice', $this->session->userdata('id'), $this->session->userdata('role_id'), 'create');
$update = check_view('invoice', $this->session->userdata('id'), $this->session->userdata('role_id'), 'update');
$delete = check_view('invoice', $this->session->userdata('id'), $this->session->userdata('role_id'), 'delete');
$export = check_view('invoice', $this->session->userdata('id'), $this->session->userdata('role_id'), 'export');
?>
<section class="section">

    <div class="section-body">

        <form id="form-data" method="POST" class="needs-validation" novalidate="">
            <div class="card card-page">
                <div class="card-header">
                    <h4 class="text-dark mb-0">
                        Transfer Form
                    </h4>
                </div>
                <div class="card-body">
                    <h5 class="text-dark mb-0">Product</h5>
                    <p class="text-muted text-small">Informasi Product</p>
                    <div class="dropdown-divider"></div>
                    <div class="row">
                        <input type="text" id="id" name="id" hidden>
                        <input type="text" id="uuid" name="uuid" hidden>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="required">Nama Pelanggan</label>
                                <input type="text" name="customer_name" id="customer_name" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="required">HP Pelanggan</label>
                                <input type="text" name="customer_phone" id="customer_phone" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="required">Tanggal</label>
                                <input type="date" class="form-control" id="date" name="date" value="<?= date('Y-m-d') ?>" required="">
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="required">Pembayaran </label>
                                <select class="form-control selectpicker" data-live-search="true" style="width: 100%" id="transfer_type" name="transfer_type">
                                    <?php foreach ($transfer_type as $key => $value) { ?>
                                        <option value="<?= $value->transfer_name ?>"><?= $value->transfer_name ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="required">Nominal (Rp)</label>
                                <input type="text" class="form-control currency" id="amount" name="amount" value="" required="">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Catatan</label>
                                <textarea class="form-control" id="description" name="description"></textarea>
                            </div>
                        </div>
                    </div>
                    <h5 class="text-dark mb-0">Product</h5>
                    <p class="text-muted text-small">Product List</p>
                    <div class="dropdown-divider"></div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-sm w-100 table-stripped" id="table-product">
                                    <thead>
                                        <tr>
                                            <th class="text-center">Product - Description</th>
                                            <!-- <th class="text-center">Quantity</th>
                                            <th class="text-center">Price</th>
                                            <th class="text-center">Amount</th> -->
                                            <th class="text-center">#</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <tr class="empty">
                                            <td colspan="2" class="text-center">belum ada item yang dipilih</td>
                                        </tr>
                                    </tbody>

                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="d-flex flex-row align-items-end">Product </label>
                                <select class="form-control selectpicker" data-live-search="true" style="width: 100%" id="product" name="product">

                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <div class="float-left">
                        <a href="<?= base_url('transfer') ?>" class="btn btn-outline-danger py-2 px-4 rounded-pill">
                            <i class="fas fa-arrow-left"></i>&nbsp; Kembali
                        </a>
                    </div>
                    <div class="float-right">
                        <button type="button" onclick="save_data()" class="btn btn-primary py-2 px-4 rounded-pill" id="submit">
                            <i class="fas fa-save mr-2"></i> Simpan
                        </button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</section>



<script>
    $(document).ready(() => {
        get_products();
        $('.selectpicker').selectpicker('refresh');
    });

    $('#product').change(function() {
        const id = $(this).val()
        $.ajax({
            url: '<?= base_url('product/get_product_detail') ?>',
            type: 'POST',
            dataType: 'JSON',
            data: {
                product_id: id
            },
            success: function(Result) {
                if ($('.empty').length > 0) {
                    $('#table-product tbody').empty();
                }

                const element = `<tr class="list-product">
                                    <td>
                                        <input type="text" class="form-control product_id" id="product_id[]" name="product_id[]" value="${Result.product_id}" hidden>
                                        <p class="font-weight-bold">${Result.product_name}</p>
                                        <small>${Result.description}</small>
                                    </td>
                                    <td width="5%">
                                        <button type="button" class="btn btn-sm btn-danger" onclick="deleteRowTable('table-product',this)"><i class="fas fa-trash"></i></button>
                                    </td>
                                </tr>`;
                $('#table-product tbody').append(element);
                getCurrency()
                get_products();
                // hitungTotal();

            },
            error: function(xhr, status, error) {
                failed('Data Gagal Dihapus', errorResponse(xhr, status, error), 'error', false, 1500)
            }
        })
    });

    const qtyMinus = (field) => {
        let quantityInput = document.getElementById('quantity_' + field);
        let quantity = replaceNumber(document.getElementById('quantity_' + field).value);
        if (quantity > 1) {
            quantityInput.value = quantity - 1
        } else {
            quantityInput.value = 1
        }
        hitungSub(field)
    }

    const qtyPlus = (field) => {
        let quantityInput = document.getElementById('quantity_' + field);
        let quantity = replaceNumber(document.getElementById('quantity_' + field).value);
        quantityInput.value = quantity + 1

        hitungSub(field)
    }

    const hitungSub = (field) => {

        let quantity = replaceNumber(document.getElementById('quantity_' + field).value);

        const price = document.getElementById('price_' + field).value;
        const amount = document.getElementById('amount_' + field);
        const total = replaceNumber(quantity) * (price ? replaceNumber(price) : 0);
        amount.value = makeCurrency(total);
        hitungTotal();
    }

    const hitungTotal = () => {
        let total = 0;
        $(".amount").each(function() {
            total += replaceNumber($(this).val());
        });
        const totalAll = document.getElementById('total');
        const htmlTotal = document.getElementById('html-total');
        totalAll.value = total;
        htmlTotal.innerHTML = 'Rp. ' + makeCurrency(total);
    }
    const get_products = () => {

        const myArray = [];
        $(".product_id").each(function() {
            myArray.push($(this).val());
        });

        $.ajax({
            url: '<?= base_url('product/get_product_sale') ?>',
            type: 'POST',
            dataType: 'JSON',
            data: {
                product_id: myArray
            },
            success: function(Result) {
                $('#product').html('')

                let option = '<option value="" disabled selected>Select Product</option>';

                Result.forEach(element => {
                    option += `<option value="${element.id}">${element.product_name}</option>`
                });
                $('#product').html(option);
                $('.selectpicker').selectpicker('refresh');
            },
            error: function(xhr, status, error) {
                failed('Error', errorResponse(xhr, status, error), 'error', false, 1500)
            }
        })
    }

    const deleteRowTable = (table, element) => {
        const rowIndex = element.parentNode.parentNode.rowIndex;
        document.getElementById(table).deleteRow(rowIndex);
        get_products();
        // hitungTotal();
    }

    const resetForm = () => {
        $('#form-data')[0].reset();
        $('#form-data').removeClass('was-validated');
    };


    $('#form-data').on('keypress', function(e) {
        var key = (e.keyCode || e.which);
        if (key == 13 || key == 3) {
            save_data();
        }
    });


    const save_data = () => {
        const form = $('#form-data');
        const product_id = $('.product_id').length;
        if (form[0].checkValidity() === false) {
            form.addClass('was-validated');
        } else {
            if (product_id < 1) {
                failed('Periksa kembali', 'Silakan pilih produk terlebih dahulu', 'warning', false, 3000);
                return false;
            }
            swal({
                    title: 'Apakah Anda yakin?',
                    text: 'Data yang dimasukkan sudah benar?',
                    icon: 'warning',
                    closeOnClickOutside: false,
                    closeOnEsc: false,
                    allowOutsideClick: false,
                    buttons: {
                        cancel: "Tidak",
                        confirm: {
                            text: "Yakin",
                            value: true,
                            visible: true,
                            className: "",
                            closeModal: false
                        }
                    }
                })
                .then(saveData => {
                    if (saveData) {
                        executeData(status);
                    } else {
                        cancle('Data tidak jadi disimpan!', 'info', false, 1500)
                    }
                })

        }
    }

    const executeData = (status) => {
        const form = $('#form-data');
        $.ajax({
            url: "<?= base_url('transfer/save_data') ?>",
            method: 'POST',
            dataType: 'JSON',
            data: new FormData(form[0]),
            processData: false,
            contentType: false,
            cache: false,
            async: true,
            success: (Result) => {
                const {
                    status,
                    data,
                    message,
                } = Result;
                if (status) {
                    success('Data Berhasil Disimpan', message, 'success', false, 1500)
                    setTimeout(() => {
                        location.href = "<?= base_url('transfer') ?>";
                        // location.href = "<?= base_url('transfer/detail/') ?>" + data.uuid;
                    }, 1500)

                } else {
                    let errorMsgString = (message) ? message.replace(/(<([^>]+)>)/gi, "") : 'Periksa kembali data anda'
                    failed('Data Gagal Disimpan', errorMsgString, 'error', false, 4000)
                }
            },
            error: (xhr, status, error) => {
                failed('Data Gagal Disimpan', errorResponse(xhr, status, error), 'error', false, 1500)

            }
        });
    }
</script>