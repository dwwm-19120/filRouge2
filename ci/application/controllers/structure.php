<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Structure extends CI_Controller
{
    /*
    --------------------------------------ACCEUIL------------------------------------------------
    */
  public function acceuil ()
  {
      $this->templates->display('acceuil');
  }
  
  public function liste ()
  {
      $this->templates->display('liste');
  }
}