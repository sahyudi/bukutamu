<footer class="main-footer">
    <div class="footer-left">
        Copyright &copy; <?= APP_LONG_NAME ?> <?= date('Y') ?>
    </div>
    <div class="footer-right">

    </div>
</footer>
</div>
</div>
</body>
<script type="text/javascript">
    $(document).ready(function() {
        $('.datatables').dataTable();
        getCurrency()
    });

    function convertDate(date) {
        const monthNames = ["January", "February", "March", "April", "May", "June",
            "July", "August", "September", "October", "November", "December"
        ];

        const d = new Date(date);
        const tanggal = d.getDate();
        const bulan = monthNames[d.getMonth()];
        const tahun = d.getFullYear();
        return `${tanggal} ${bulan} ${tahun}`;
    }


    const selectError = () => {
        // Swal.close();
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Error, periksa kembali jaringan anda'
        });
    }

    const replaceNumber = (value) => {
        let value1 = String(value).replaceAll(',', '');
        // let value2 = String(value1).replaceAll(',', '.');
        return Math.ceil(value1);
    }

    const handleAjaxError = (xhr, textStatus, error) => {
        if (textStatus === 'timeout') {
            alert('The server took too long to send the data.');
        } else {
            alert('An error occurred on the server. Please try again in a minute.');
        }
    }

    const getCurrency = () => {

        document.querySelectorAll('.currency').forEach(inp => new Cleave(inp, {
            numeral: true,
            numeralThousandsGroupStyle: 'thousand',
            numeralDecimalMark: '.',
            numeralDecimalScale: 5,
            delimiter: ','
        }));
    }
    const makeCurrency = (value, digit = 2) => {
        const options = {
            minimumFractionDigits: 0,
            maximumFractionDigits: digit
        };
        return Number(value).toLocaleString('en', options);
    }
    const goBack = () => {
        window.history.back(-1);
    }

    function get_status_tagihan(status) {
        if (status == 0) {
            return '<span class="badge badge-danger py-1 rounded" style="font-size: smaller;">BELUM <br> TAGIH</span>';
        } else {
            return '<span class="badge badge-primary py-1 rounded" style="font-size: smaller;">SUDAH <br> TAGIH</span>';
        }
    }

    function get_status_bayar(status) {
        if (status == 'BELUM BAYAR') {
            return '<span class="badge badge-danger py-1 rounded" style="font-size: smaller;">BELUM <br> BAYAR</span>';
        } else if (status == 'LUNAS') {
            return '<span class="badge badge-primary py-1 rounded" style="font-size: smaller;">LUNAS</span>';
        } else {
            return '<span class="badge badge-warning py-1 rounded" style="font-size: smaller;">BELUM <br> LUNAS</span>';
            // return 'BATAL';
        }
    }

    function get_status_invoice(status) {
        if (status == 1) {
            return '<span class="badge badge-warning py-1 rounded" style="font-size: smaller;">BELUM <br> BAYAR</span>';
        } else if (status == 2) {
            return '<span class="badge badge-primary py-1 rounded" style="font-size: smaller;">LUNAS</span>';
            // return 'LUNAS';
        } else {
            return '<span class="badge badge-danger py-1 rounded" style="font-size: smaller;">BATAL</span>';
            // return 'BATAL';
        }
    }

    const getStatus = (statusId) => {
        if (statusId === 0) {
            return `<span class="badge badge-light font-weight-bold" style="font-size: smaller;">Draft</span>`
        } else if (statusId === 1) {
            return `<span class="badge badge-primary font-weight-bold" style="font-size: smaller;">Belum Invoice</span>`
        } else if (statusId === 2) {
            return `<span class="badge badge-info font-weight-bold" style="font-size: smaller;">Sudah Invoice</span>`
        } else {
            return `<span class="badge badge-danger font-weight-bold" style="font-size: smaller;">Batal</span>`
        }
    }

    const getStatusMail = (statusId) => {
        if (statusId == 0) {
            return `<span class="badge badge-light font-weight-bold" style="font-size: smaller;">Not Send</span>`
        } else if (statusId == 1) {
            return `<span class="badge badge-primary font-weight-bold" style="font-size: smaller;">Sent</span>`
        } else if (statusId == 2) {
            return `<span class="badge badge-info font-weight-bold" style="font-size: smaller;">Failed</span>`
        }
    }
    const getSatusActive = (statusId) => {
        if (statusId === 1) {
            return `<span class="badge badge-primary font-weight-bold">Aktif</span>`
        } else if (statusId === 0) {
            return `<span class="badge badge-danger font-weight-bold">Non Aktif</span>`
        } else {
            return `<span class="badge badge-danger font-weight-bold">error</span>`
        }
    }

    // end global funtion
    if (jQuery().select2) {
        $(".select2").select2({
            placeholder: "Select Option",
        });
    }

    const showloading = () => {
        Swal.fire({
            icon: 'info',
            title: 'Tunggu sebentar ..',
            // html: 'Sedang menyimpan data',
            // timer: 2000,
            allowOutsideClick: false,
            allowEscapeKey: false,
            timerProgressBar: true,
            didOpen: () => {
                Swal.showLoading();
            }
        });
    }
    const notif_success = (msg) => {
        Swal.fire({
            position: 'top-end',
            icon: 'success',
            title: msg,
            showConfirmButton: false,
            timer: 1500
        });
    }

    const notif_error = (msg) => {
        Swal.fire({
            position: 'top-end',
            icon: 'error',
            title: msg,
            showConfirmButton: false,
            timer: 1500
        });
    }

    const notif_error_default = () => {
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Error, periksa kembali jaringan anda'
        });
    }
</script>

</html>