<?php
/**
 * TCPDF Configuration File
 * 
 * @author Nicola Asuni
 * @package com.tecnick.tcpdf
 * @version 4.9.005
 * @since 2004-10-27
 * @license GNU-LGPL v3 (http://www.gnu.org/copyleft/lesser.html)
 */

// ============================================================
// Installation Paths (modify as needed for performance)
// ============================================================
// define ('K_PATH_MAIN', '');
// define ('K_PATH_URL', '');
// define ('K_PATH_FONTS', K_PATH_MAIN.'fonts/');
 define ('K_PATH_IMAGES', '../images/Escudo ITO.svg');
// define ('K_PATH_CACHE', '/tmp/');

// ============================================================
// Document Header Settings
// ============================================================
define ('PDF_HEADER_LOGO', '../images/Escudo ITO.svg');
define ('PDF_HEADER_LOGO_WIDTH', 0);
define ('PDF_HEADER_TITLE', 'TCPDF Example');
define ('PDF_HEADER_STRING', "by Nicola Asuni - Tecnick.com\nwww.tcpdf.org");

// ============================================================
// Page Settings
// ============================================================
define ('PDF_PAGE_FORMAT', 'A4');
define ('PDF_PAGE_ORIENTATION', 'P');
define ('PDF_UNIT', 'mm');

define ('PDF_MARGIN_HEADER', 5);
define ('PDF_MARGIN_FOOTER', 10);
define ('PDF_MARGIN_TOP', 27);
define ('PDF_MARGIN_BOTTOM', 25);
define ('PDF_MARGIN_LEFT', 15);
define ('PDF_MARGIN_RIGHT', 15);

// ============================================================
// Fonts & Typography
// ============================================================
define ('PDF_FONT_NAME_MAIN', 'helvetica');
define ('PDF_FONT_SIZE_MAIN', 10);
define ('PDF_FONT_NAME_DATA', 'helvetica');
define ('PDF_FONT_SIZE_DATA', 8);
define ('PDF_FONT_MONOSPACED', 'courier');

define ('PDF_IMAGE_SCALE_RATIO', 1.25);
define ('HEAD_MAGNIFICATION', 1.1);
define ('K_CELL_HEIGHT_RATIO', 1.25);
define ('K_TITLE_MAGNIFICATION', 1.3);
define ('K_SMALL_RATIO', 2/3);

define ('K_THAI_TOPCHARS', true);

define ('K_TCPDF_CALLS_IN_HTML', false);
define ('K_TCPDF_THROW_EXCEPTION_ERROR', false);

define ('K_TIMEZONE', 'UTC');

// ============================================================
// END OF FILE
// ============================================================
