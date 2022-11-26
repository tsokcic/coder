package net.sokcic.demo.spring.mydemo.web.controller;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;


@RestController
public class HelloWorld {

    @GetMapping(value="/")
    public ResponseEntity<?> helloWorld() {
        return ResponseEntity.ok("Hello World 123");
    }
    
    
    
}
