<?php
/**
 * Password encoding
 *
 * @author     Claus J?rgensen <thedeathart@gmail.com>
 * @category   Security
 * @package    Kalonline Registration
 * @copyright  Copyright (c) 2006 Claus J?rgensen (http://dragons-lair.org)
 * @license    MIT License
 */

class Password
{
    function encode($password) {
        $encar = array('!'=>'95', '"'=>'88', '#'=>'9D', '$'=>'4C', '%'=>'F2', '&'=>'3E'
                      ,'\''=>'BB', '('=>'C0', ')'=>'7F','*'=>'18', '+'=>'70', ','=>'A6'
                      ,'-'=>'E2', '.'=>'EC', '/'=>'77','0'=>'2C', '1'=>'3A', '2'=>'4A'
                      ,'3'=>'91', '4'=>'5D', '5'=>'7A','6'=>'29', '7'=>'BC', '8'=>'6E'
                      ,'9'=>'D4', ':'=>'40', ';'=>'17', '<'=>'2E', '='=>'CB', '>'=>'72'
                      ,'?'=>'9C','@'=>'A1', 'A'=>'FF', 'B'=>'F3', 'C'=>'F8', 'D'=>'9B'
                      ,'E'=>'50','F'=>'51', 'G'=>'6D', 'H'=>'E9','I'=>'9A', 'J'=>'B8'
                      ,'K'=>'84', 'L'=>'A8', 'M'=>'14', 'N'=>'38', 'O'=>'CE'
                      ,'P'=>'92', 'Q'=>'5C', 'R'=>'F5', 'S'=>'EE', 'T'=>'B3', 'U'=>'89'
                      ,'V'=>'7B', 'W'=>'A2', 'X'=>'AD','Y'=>'71', 'Z'=>'E3', '['=>'D5'
                      ,'\\'=>'BF', ']'=>'53', '^'=>'28','_'=>'44'
                      ,'`'=>'33', 'a'=>'48', 'b'=>'DB', 'c'=>'FC', 'd'=>'09', 'e'=>'1F'
                      ,'f'=>'94', 'g'=>'12', 'h'=>'73'
                      ,'i'=>'37', 'j'=>'82', 'k'=>'81', 'l'=>'39', 'm'=>'C2', 'n'=>'8D'
                      ,'o'=>'7D','p'=>'08', 'q'=>'4F', 'r'=>'B0', 's'=>'FE', 't'=>'79'
                      ,'u'=>'0B','v'=>'D6', 'w'=>'23', 'x'=>'7C'
                      ,'y'=>'4B', 'z'=>'8E', '{'=>'06', '|'=>'5A', '}'=>'CC', '~'=>'62');
        $newpass = '0x';
        for ($i = 0; $i < strlen($password); $i++) {
            $newpass .= $encar[$password[$i]];
        }
        return $newpass;
    }

    function decode($password) {
        $password = bin2hex($password);
        $encar = array('!'=>'95', '"'=>'88', '#'=>'9D', '$'=>'4C', '%'=>'F2', '&'=>'3E'
                      ,'\''=>'BB', '('=>'C0', ')'=>'7F','*'=>'18', '+'=>'70', ','=>'A6'
                      ,'-'=>'E2', '.'=>'EC', '/'=>'77','0'=>'2C', '1'=>'3A', '2'=>'4A'
                      ,'3'=>'91', '4'=>'5D', '5'=>'7A','6'=>'29', '7'=>'BC', '8'=>'6E'
                      ,'9'=>'D4', ':'=>'40', ';'=>'17', '<'=>'2E', '='=>'CB', '>'=>'72'
                      ,'?'=>'9C','@'=>'A1', 'A'=>'FF', 'B'=>'F3', 'C'=>'F8', 'D'=>'9B'
                      ,'E'=>'50','F'=>'51', 'G'=>'6D', 'H'=>'E9','I'=>'9A', 'J'=>'B8'
                      ,'K'=>'84', 'L'=>'A8', 'M'=>'14', 'N'=>'38', 'O'=>'CE'
                      ,'P'=>'92', 'Q'=>'5C', 'R'=>'F5', 'S'=>'EE', 'T'=>'B3', 'U'=>'89'
                      ,'V'=>'7B', 'W'=>'A2', 'X'=>'AD','Y'=>'71', 'Z'=>'E3', '['=>'D5'
                      ,'\\'=>'BF', ']'=>'53', '^'=>'28','_'=>'44'
                      ,'`'=>'33', 'a'=>'48', 'b'=>'DB', 'c'=>'FC', 'd'=>'09', 'e'=>'1F'
                      ,'f'=>'94', 'g'=>'12', 'h'=>'73'
                      ,'i'=>'37', 'j'=>'82', 'k'=>'81', 'l'=>'39', 'm'=>'C2', 'n'=>'8D'
                      ,'o'=>'7D','p'=>'08', 'q'=>'4F', 'r'=>'B0', 's'=>'FE', 't'=>'79'
                      ,'u'=>'0B','v'=>'D6', 'w'=>'23', 'x'=>'7C'
                      ,'y'=>'4B', 'z'=>'8E', '{'=>'06', '|'=>'5A', '}'=>'CC', '~'=>'62');
        $encar = array_flip($encar);
        $newpass = '';
        for($i = 0; $i < strlen($password); $i+=2) {
            if(isset($encar[$password[$i]])) {
                $key = strtoupper($password[$i]);
            } else {
                $key = strtoupper($password[$i]) . strtoupper($password[($i+1)]);
            }
            $newpass .= $encar[$key];
        }
        return $newpass;
    }
}

?> 