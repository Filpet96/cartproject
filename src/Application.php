<?php
declare(strict_types=1);


namespace App;

class Application
{
  protected $name;
  protected $version;

  public function __construct(string $name, int $version)
  {
    $this->name = $name;
    $this->version = $version;
  }

  public function getName()
  {
    return $this->name;
  }

  public function getVersion()
  {
    return $this->version;
  }

}
