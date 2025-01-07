<?php


use NumberToWords\NumberToWords;

require 'vendor/autoload.php';

function not_found_data($redirect)
{
    $CI = &get_instance();
    $CI->session->set_flashdata('message', '<div class="alert mt-2 alert-danger alert-dismissible show fade">
                      <div class="alert-body">
                        <button class="close" data-dismiss="alert">
                          <span>×</span>
                        </button>
                         <strong>Data is not found</strong>.
                      </div>
                    </div>');
    redirect($redirect);
}



function get_numberInvoice($date)
{
    $CI = &get_instance();
    $month = date('m', strtotime($date));
    $year = date('Y', strtotime($date));
    $sql = "SELECT COUNT(id)+1 AS nomor FROM invoice WHERE MONTH(tanggal) = $month AND YEAR(tanggal) =  $year";
    return $CI->db->query($sql)->row()->nomor;
}

function get_status_invoice($status)
{
    if ($status == 1) {
        return 'BELUM BAYAR';
    } else if ($status == 2) {
        return 'LUNAS';
    } else {
        return 'BATAL';
    }
}

function get_status($status)
{
    if ($status == 0) {
        return 'DRAFT';
    } else if ($status == 1) {
        return 'BELUM INVOICE';
    } else if ($status == 2) {
        return 'SUDAH INVOICE';
    } else {
        return 'BATAL';
    }
}

function get_customer($customerId)
{
    $CI = &get_instance();
    $CI->db->select('nama');
    $CI->db->where('id', $customerId);
    $result = $CI->db->get('customer')->row();
    if ($result) {
        return $result->nama;
    } else {
        return '-';
    }
}

function get_produk($produkId)
{
    $CI = &get_instance();
    $CI->db->select('nama');
    $CI->db->where('id', $produkId);
    $result = $CI->db->get('price')->row();
    if ($result) {
        return $result->nama;
    } else {
        return '-';
    }
}

function get_month()
{
    $data[0] = '-';
    $data[1] = 'Januari';
    $data[2] = 'Februari';
    $data[3] = 'Maret';
    $data[4] = 'April';
    $data[5] = 'Mei';
    $data[6] = 'Juni';
    $data[7] = 'Juli';
    $data[8] = 'Agustus';
    $data[9] = 'September';
    $data[10] = 'Oktober';
    $data[11] = 'November';
    $data[12] = 'Desember';

    return $data;
}

function replace_number($value, $first_replace = ',', $second_replace = '.')
{
    $newValue = 0;

    $newValue = str_replace($first_replace, '', $value);
    // $newValue = str_replace($second_replace, '.', $newValue);
    return $newValue;
}

function replace_number_old($value, $first_replace = '.', $second_replace = ',')
{
    $newValue = 0;

    $newValue = str_replace($first_replace, '', $value);
    $newValue = str_replace($second_replace, '.', $newValue);

    return $newValue;
}

function numberFormat($value, $range = 2, $first_replace = ',', $second_replace = '.')
{
    // $value = is_float($value);
    $number = number_format($value, $range, $second_replace, $first_replace);
    return $number;
}

function numberFormat_old($value, $range = 2, $first_replace = '.', $second_replace = ',')
{
    // $range = is_int($value) ? 2 : 0;
    return number_format($value, $range, $second_replace, $first_replace);
}

function numberRomawi($no)
{
    $data = ['', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX', 'X', 'XI', 'XII'];
    return $data[$no];
}



function penyebut($nilai)
{
    $nilai = abs($nilai);
    $huruf = array("", "satu", "dua", "tiga", "empat", "lima", "enam", "tujuh", "delapan", "sembilan", "sepuluh", "sebelas");
    $temp = "";
    if ($nilai < 12) {
        $temp = " " . $huruf[$nilai];
    } else if ($nilai < 20) {
        $temp = penyebut($nilai - 10) . " belas";
    } else if ($nilai < 100) {
        $temp = penyebut($nilai / 10) . " puluh" . penyebut($nilai % 10);
    } else if ($nilai < 200) {
        $temp = " seratus" . penyebut($nilai - 100);
    } else if ($nilai < 1000) {
        $temp = penyebut($nilai / 100) . " ratus" . penyebut($nilai % 100);
    } else if ($nilai < 2000) {
        $temp = " seribu" . penyebut($nilai - 1000);
    } else if ($nilai < 1000000) {
        $temp = penyebut($nilai / 1000) . " ribu" . penyebut($nilai % 1000);
    } else if ($nilai < 1000000000) {
        $temp = penyebut($nilai / 1000000) . " juta" . penyebut($nilai % 1000000);
    } else if ($nilai < 1000000000000) {
        $temp = penyebut($nilai / 1000000000) . " milyar" . penyebut(fmod($nilai, 1000000000));
    } else if ($nilai < 1000000000000000) {
        $temp = penyebut($nilai / 1000000000000) . " trilyun" . penyebut(fmod($nilai, 1000000000000));
    }
    return $temp;
}

function terbilang($nilai, $currency = 'IDR')
{
    $numberToWords = new NumberToWords();
    // return $nilai;
    if ($currency == 'IDR') {


        // create the number to words "manager" class


        // build a new number transformer using the RFC 3066 language identifier
        $numberTransformer = $numberToWords->getNumberTransformer('en');
        $hasil = $numberTransformer->toWords($nilai);
        // if ($nilai < 0) {
        //     $hasil = "minus " . trim(penyebut($nilai));
        // } else {
        //     // $hasil = trim(penyebut($nilai));
        // }
        // $hasil = ucwords(strtolower(trim(numberTowords($nilai))));
        return ucwords($hasil) . " Rupiah";
    } else {
        // $hasil = amountToWords($nilai);
        $numberTransformer = $numberToWords->getNumberTransformer('en');
        $hasil = $numberTransformer->toWords($nilai);
        return ucwords(strtolower($hasil)) . ($currency == 'SGD') ? 'SG' : 'US' . " dollars";
    }
}

function numberTowords($num)
{

    $ones = array(
        0 => "ZERO",
        1 => "ONE",
        2 => "TWO",
        3 => "THREE",
        4 => "FOUR",
        5 => "FIVE",
        6 => "SIX",
        7 => "SEVEN",
        8 => "EIGHT",
        9 => "NINE",
        10 => "TEN",
        11 => "ELEVEN",
        12 => "TWELVE",
        13 => "THIRTEEN",
        14 => "FOURTEEN",
        15 => "FIFTEEN",
        16 => "SIXTEEN",
        17 => "SEVENTEEN",
        18 => "EIGHTEEN",
        19 => "NINETEEN",
        "014" => "FOURTEEN"
    );
    $tens = array(
        0 => "ZERO",
        1 => "TEN",
        2 => "TWENTY",
        3 => "THIRTY",
        4 => "FORTY",
        5 => "FIFTY",
        6 => "SIXTY",
        7 => "SEVENTY",
        8 => "EIGHTY",
        9 => "NINETY"
    );
    $hundreds = array(
        "HUNDRED",
        "THOUSAND",
        "MILLION",
        "BILLION",
        "TRILLION",
        "QUARDRILLION"
    ); /*limit t quadrillion */
    $num = number_format($num, 2, ".", ",");
    $num_arr = explode(".", $num);
    $wholenum = @$num_arr[0];
    $decnum = @$num_arr[1];
    $whole_arr = array_reverse(explode(",", $wholenum));
    krsort($whole_arr, 1);
    $rettxt = "";
    foreach ($whole_arr as $key => $i) {

        while (substr($i, 0, 1) == "0")
            $i = substr($i, 1, 5);
        if ($i < 20) {
            /* echo "getting:".$i; */
            $rettxt .= @$ones[$i];
        } elseif ($i < 100) {
            if (substr($i, 0, 1) != "0")  $rettxt .= $tens[substr($i, 0, 1)];
            if (substr($i, 1, 1) != "0") $rettxt .= " " . $ones[substr($i, 1, 1)];
        } else {
            if (substr($i, 0, 1) != "0") $rettxt .= $ones[substr($i, 0, 1)] . " " . $hundreds[0];
            if (substr($i, 1, 1) != "0") $rettxt .= " " . $tens[substr($i, 1, 1)];
            if (substr($i, 2, 1) != "0") $rettxt .= " " . $ones[substr($i, 2, 1)];
        }
        if ($key > 0) {
            $rettxt .= " " . @$hundreds[$key] . " ";
        }
    }
    if ($decnum > 0) {
        $rettxt .= " and ";
        if ($decnum < 20) {
            $rettxt .= @$ones[$decnum];
        } elseif ($decnum < 100) {
            $rettxt .= @$tens[substr($decnum, 0, 1)];
            $rettxt .= " " . @$ones[substr($decnum, 1, 1)];
        }
    }
    return $rettxt;
}
function AmountInWords(float $amount)
{
    $amount_after_decimal = round($amount - ($num = floor($amount)), 2) * 100;
    // Check if there is any number after decimal
    $amt_hundred = null;
    $count_length = strlen($num);
    $x = 0;
    $string = array();
    $change_words = array(
        0 => '', 1 => 'One', 2 => 'Two',
        3 => 'Three', 4 => 'Four', 5 => 'Five', 6 => 'Six',
        7 => 'Seven', 8 => 'Eight', 9 => 'Nine',
        10 => 'Ten', 11 => 'Eleven', 12 => 'Twelve',
        13 => 'Thirteen', 14 => 'Fourteen', 15 => 'Fifteen',
        16 => 'Sixteen', 17 => 'Seventeen', 18 => 'Eighteen',
        19 => 'Nineteen', 20 => 'Twenty', 30 => 'Thirty',
        40 => 'Forty', 50 => 'Fifty', 60 => 'Sixty',
        70 => 'Seventy', 80 => 'Eighty', 90 => 'Ninety'
    );
    $here_digits = array('', 'Hundred', 'Thousand', 'Lakh', 'Crore');
    while ($x < $count_length) {
        $get_divider = ($x == 2) ? 10 : 100;
        $amount = floor($num % $get_divider);
        $num = floor($num / $get_divider);
        $x += $get_divider == 10 ? 1 : 2;
        if ($amount) {
            $add_plural = (($counter = count($string)) && $amount > 9) ? 's' : null;
            $amt_hundred = ($counter == 1 && $string[0]) ? ' and ' : null;
            $string[] = ($amount < 21) ? $change_words[$amount] . ' ' . $here_digits[$counter] . $add_plural . ' 
       ' . $amt_hundred : $change_words[floor($amount / 10) * 10] . ' ' . $change_words[$amount % 10] . ' 
       ' . $here_digits[$counter] . $add_plural . ' ' . $amt_hundred;
        } else $string[] = null;
    }
    $implode_to_Rupees = implode('', array_reverse($string));
    $get_paise = ($amount_after_decimal > 0) ? "And " . ($change_words[$amount_after_decimal / 10] . " 
   " . $change_words[$amount_after_decimal % 10]) . ' Paise' : '';
    return ($implode_to_Rupees ? $implode_to_Rupees . 'Rupees ' : '') . $get_paise;
}

function convertAmountToWords($amount)
{
    // Arrays for one-digit, two-digit, and special cases
    $oneDigit = array(
        "", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"
    );
    $twoDigits = array(
        "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen",
        "Sixteen", "Seventeen", "Eighteen", "Nineteen"
    );
    $tens = array(
        "", "", "Twenty", "Thirty", "Forty", "Fifty",
        "Sixty", "Seventy", "Eighty", "Ninety"
    );
    $thousands = array("", "Thousand", "Million", "Billion");

    // Clean up the amount and remove commas
    $amount = str_replace(',', '', $amount);

    // Check if the amount is numeric
    if (!is_numeric($amount)) {
        return "Invalid input";
    }

    // Convert the amount to an integer and initialize variables
    $amount = (int)$amount;
    $words = "";
    $count = 0;

    while ($amount > 0) {
        $chunk = $amount % 1000;
        if ($chunk != 0) {
            $chunkWords = "";

            if ($chunk >= 100) {
                $chunkWords .= $oneDigit[$chunk / 100] . " Hundred ";
                $chunk %= 100;
            }

            if ($chunk >= 10 && $chunk <= 19) {
                $chunkWords .= $twoDigits[$chunk - 10];
            } elseif ($chunk >= 20) {
                $chunkWords .= $tens[$chunk / 10] . " ";
                $chunk %= 10;
            }

            if ($chunk > 0) {
                $chunkWords .= $oneDigit[$chunk] . " ";
            }

            $chunkWords .= $thousands[$count] . " ";
            $words = $chunkWords . $words;
        }

        $amount = (int)($amount / 1000);
        $count++;
    }

    if (empty($words)) {
        return "Zero";
    }

    return trim($words);
}

function showme($param)
{
    // $CI = &get_instance(); 
    print_r('<pre>');
    print_r($param);
    print_r('</pre>');
    die;
}


function showme_query()
{
    $CI = &get_instance();
    print_r('<pre>');
    print_r($CI->db->last_query());
    print_r('</pre>');
    exit;
}

function return_json($status, $message = null, $data = [])
{
    $arr = [
        'status' => $status,
        'message' => $message,
        'data' => $data
    ];
    echo json_encode($arr);
    exit;
}



function active_class($param1, $param2, $class = 'active')
{
    if ($param1 == $param2) {
        return $class;
    }
}


function active_uri_class($param1, $uriSegment = 1, $class = 'active')
{
    $CI = &get_instance();
    if ($CI->uri->segment($uriSegment + 1) == $param1 || $CI->uri->segment($uriSegment) == $param1) {
        return $class;
    }
}

function get_session($param)
{
    $CI = &get_instance();
    $sess = $CI->session->userdata($param);
    return $sess;
}

function check_access($role_stack)
{
    $CI = &get_instance();
    $role = $CI->session->userdata('role');
    if (!in_array($role, $role_stack)) {
        show_404();
        exit;
    }
}

function cek_requirement($key_arr_requiered, $arr_request)
{
    foreach ($key_arr_requiered as $key) {
        if (!isset($arr_request[$key])) {
            return [false, $key . ' Cannot be Null'];
        }
    }
    return [true];
}

function change_format_date($date_str)
{
    if (!empty($date_str)) {
        return date("Y-m-d", strtotime($date_str));
    } else {
        return '0000-00-00';
    }
}

function tgl_indo($tanggal, $pemisah = '/')
{

    $bulan = array(
        '-',
        'Januari',
        'Februari',
        'Maret',
        'April',
        'Mei',
        'Juni',
        'Juli',
        'Agustus',
        'September',
        'Oktober',
        'November',
        'Desember'
    );
    $pecahkan = explode('-', $tanggal);

    // variabel pecahkan 0 = tanggal
    // variabel pecahkan 1 = bulan
    // variabel pecahkan 2 = tahun

    return $pecahkan[2] . "$pemisah" . $bulan[(int)$pecahkan[1]] . "$pemisah" . $pecahkan[0];
}

//---------------------------------------------------------------------------------------------

function get_all_data($tbl)
{
    $CI = &get_instance();
    $CI->db->select("*");
    $CI->db->from($tbl);
    $data = $CI->db->get()->result();
    return $data;
}

function insert_history($trans_id, $date,  $status)
{
    $CI = &get_instance();

    $data = [
        'trans_id' => $trans_id,
        'status_tracking' => $status,
        'date' => $date,
        'created_by' => $CI->session->userdata('username'),
    ];

    $data = $CI->db->insert('history_tracking', $data);
}


//--------------------------------------------------------------------------------------------