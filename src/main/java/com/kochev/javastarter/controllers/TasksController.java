package com.kochev.javastarter.controllers;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TasksController {

    @GetMapping("/tasks")
    public ResponseEntity<String> getTasks() {
        String tasks = "\"taks\": \"do stuff\"";
        return new ResponseEntity<>(tasks, HttpStatus.OK);
    }
}
