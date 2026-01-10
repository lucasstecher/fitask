package dev.stecher.FiTask.api;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping()
public class hello {

    @GetMapping("/hello")
     public String getHello() {
        return "working as intended";
    }
}
