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
                        Form Add
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
                                <label class="">Tanggal Pemesanan</label>
                                <input type="datetime-local" class="form-control" id="order_date" name="order_date" value="<?= date('Y-m-d H:i:s') ?>" required="">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="">Tanggal Pengambilan</label>
                                <input type="date" class="form-control" id="pickup_date" name="pickup_date" value="" required="">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Catatan Pembelian</label>
                                <textarea class="form-control" id="description" name="description"></textarea>
                            </div>
                        </div>
                    </div>
                    <h5 class="text-dark mb-0">Product</h5>
                    <p class="text-muted text-small">Product List</p>
                    <div class="dropdown-divider"></div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="d-flex flex-row align-items-end">Pilih Produk</label>
                                <select class="form-control selectpicker" data-size="5" data-live-search="true" style="width: 100%" data id="product" name="product">

                                </select>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table w-100 table-stripped" id="table-product">
                                    <thead class="bg-primary text-white">
                                        <tr>
                                            <th class="text-white text-center">Product - Description</th>
                                            <th class="text-white text-center">Quantity</th>
                                            <th class="text-white text-center">Price</th>
                                            <th class="text-white text-center">Amount</th>
                                            <th class="text-white text-center">#</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <tr class="empty">
                                            <td colspan="5" class="text-center">belum ada item yang dipilih</td>
                                        </tr>
                                    </tbody>
                                    <tfoot class="bg-primary text-white">
                                        <tr>
                                            <td colspan="3" class="font-weight-bold align-middle text-right">TOTAL</td>
                                            <td class="font-weight-bold align-middle text-right">
                                                <input type="text" class="form-control" id="total" name="total" value="0" hidden>
                                                <span id="html-total">0</span>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" class="font-weight-bold align-middle text-right">DP</td>
                                            <td class="font-weight-bold align-middle text-right">
                                                <input type="text" class="form-control text-right currency" id="down_payment" name="down_payment" value="0">
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" class="font-weight-bold align-middle text-right">Kurang Bayar</td>
                                            <td class="font-weight-bold align-middle text-right">
                                                <input type="text" class="form-control text-right" id="outstanding_balance" name="outstanding_balance" value="0" readonly>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Metode Pembayaran</label>
                                <select class="form-control selectpicker" style="width: 100%" id="transfer_type" name="transfer_type">
                                    <option value="CASH">CASH</option>
                                    <?php foreach ($transfer_type as $key => $value) { ?>
                                        <option value="<?= $value->transfer_name ?>"><?= $value->transfer_name ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4 catatan-pembayaran d-none">
                            <div class="form-group">
                                <label>Tanggal Transfer</label>
                                <input type="datetime-local" class="form-control" id="payment_date" name="payment_date" value="" required="">
                            </div>
                        </div>
                        <div class="col-md-4 catatan-pembayaran d-none">
                            <div class="form-group">
                                <label>Catatan Pembayaran</label>
                                <textarea class="form-control" id="payment_remark" name="payment_remark"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <div class="float-left">
                        <a href="<?= base_url('invoice') ?>" class="btn btn-outline-danger py-2 px-4 rounded-pill">
                            <i class="fas fa-arrow-left"></i>&nbsp; Kembali
                        </a>
                    </div>
                    <div class="float-right">
                        <button type="button" onclick="save_data('final')" class="btn btn-primary py-2 px-4 rounded-pill" id="submit">
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

    $('#transfer_type').change(function() {
        if ($(this).val() != 'CASH') {
            $('.catatan-pembayaran').removeClass('d-none')
        } else {
            $('.catatan-pembayaran').addClass('d-none')
        }
    })
    $('#down_payment').keyup(function() {
        hitungBayar();
    })

    const hitungBayar = () => {
        const balance = document.getElementById('outstanding_balance')
        const el_down_payment = document.getElementById('down_payment')
        const el_total = document.getElementById('total')
        let total = replaceNumber(el_total.value);
        let down_payment = replaceNumber(el_down_payment.value);
        if (down_payment > total) {
            down_payment = total
            el_down_payment.value = makeCurrency(down_payment);
        }
        const dataBalance = total - down_payment;
        balance.value = makeCurrency(dataBalance);
    }


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
                                    <td width="35%">
                                        <input type="text" class="form-control product_id" id="product_id[]" name="product_id[]" value="${Result.product_id}" hidden>
                                        <p class="font-weight-bold">${Result.product_name}</p>
                                        <small>${Result.description}</small>
                                    </td>
                                    <td class="text-center align-middle">
                                        <div class="d-flex align-items-center">
                                            <button type="button" class="btn btn-sm btn-secondary" onclick="qtyMinus(${Result.product_id})"><i class="fas fa-minus"></i></button>
                                            <input type="text" class="form-control text-right quantity currency mx-2" id="quantity_${Result.product_id}" onkeyup="hitungSub('${Result.product_id}')" name="quantity[]" value="1" required="">
                                            <button type="button" class="btn btn-sm btn-primary" onclick="qtyPlus(${Result.product_id})"><i class="fas fa-plus"></i></button>
                                        </div>
                                    </td>
                                    <td>
                                        <input type="text" class="form-control text-right price currency" id="price_${Result.product_id}" onkeyup="hitungSub(${Result.product_id})" name="price[]" value="${Result.product_price ?? 0}" required="">
                                    </td>
                                    <td>
                                        <input type="text" class="form-control text-right amount currency" id="amount_${Result.product_id}" name="amount[]" value="${Result.product_price ?? 0}" readonly>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-danger" onclick="deleteRowTable('table-product',this)"><i class="fas fa-trash"></i></button>
                                    </td>
                                </tr>`;
                $('#table-product tbody').append(element);
                getCurrency()
                get_products();
                hitungTotal();

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

        hitungBayar();
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
        hitungTotal();
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


    const save_data = (status) => {
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
            url: "<?= base_url('invoice/save') ?>/" + status,
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
                    $('#id').val(data.id)
                    $('#uuid').val(data.uuid)
                    success('Data Berhasil Disimpan', message, 'success', false, 1500)
                    setTimeout(() => {
                        location.href = "<?= base_url('invoice/detail/') ?>" + data.uuid;
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