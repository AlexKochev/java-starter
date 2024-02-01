package com.example.javastarter.controllers;

import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;

@RestController
public class TaskController {

    @GetMapping("/tasks")
    public ResponseEntity<String> getTasks() {
        String tasks = "{\"tasks\":\"Task 1\"}";
        return new ResponseEntity<>(tasks, HttpStatus.OK);
    }


}
