" Astria "
iabbrev alog Astria_Log::logArray("");<esc>2hi

" PHP "
iabbrev pbf public function()<CR>{<CR><CR>}<esc><Up><Up><Up>$hi
iabbrev prf protected function()<CR>{<CR><CR>}<esc><Up><Up><Up>$hi
iabbrev $t $this->
iabbrev ss self::


"phpunit"
iabbrev _ae $this->assertEquals($actual, $expected);
iabbrev _aint $this->assertInternaltype($actual, $expected);
iabbrev _ains $this->assertInstanceOf($actual, $expected);
iabbrev _ac $this->assertCount($actual, $expected);
iabbrev _an $this->assertNull($expected);
iabbrev _at $this->assertTrue($expected);
iabbrev _af $this->assertFalse($expected);



"Misspell"
iabbrev functin function
iabbrev funcion function
iabbrev functino function
iabbrev function function
iabbrev funciton function
iabbrev functiton function
iabbrev fucntion function
iabbrev funtion function
iabbrev erturn return
iabbrev retunr return
iabbrev reutrn return
iabbrev reutn return
iabbrev foreahc foreach
iabbrev forech foreach
