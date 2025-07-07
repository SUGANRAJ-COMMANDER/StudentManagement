package com.example.Sm.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.Sm.Model.Student;
import com.example.Sm.Repository.SmRepo;
import java.util.List;
import java.util.Optional;



@Controller
public class SmController {
	
	@Autowired
	SmRepo repo;
	
	@GetMapping("/")
	public String showLoginForm() {
		return "Login";
	}
	
	@PostMapping("/login")
	public String login(@RequestParam String uname,@RequestParam String password){
		
		if("admin".equals(uname) && "123".equals(password) ) {
			return "index";
			
		}
		else {
			return "error";
		}
	}
	
	@GetMapping("/index")
	public String showIndex() {
		return "index";
	}
	
	
	@PostMapping("/addStudent")
	public String addStudent(@ModelAttribute Student user, ModelMap model) {
	    repo.save(user);
	    List<Student> students =repo.findAll();
	    model.addAttribute("students", students);
	    return "result";
	}
	
	@PostMapping("/update")
    public String updateStudent(@ModelAttribute Student student, ModelMap model) {
        Optional<Student> existing = repo.findById(student.getId());
        if (existing.isPresent()) {
            repo.save(student);
            List<Student> students =repo.findAll();
		    model.addAttribute("students", students);
            model.addAttribute("message", "Student updated successfully!");
        } else {
            model.addAttribute("message", "Student not found!");
        }
        return "result";
    }
	
	
	@PostMapping("/delete")
    public String deleteStudent(@RequestParam("id") int id, ModelMap model) {
        if (repo.existsById(id)) {
            repo.deleteById(id);
            List<Student> students =repo.findAll();
		    model.addAttribute("students", students);
            model.addAttribute("message", "Student deleted successfully!");
        } else {
            model.addAttribute("message", "Student not found!");
        }
        return "result";
    }
	
	@GetMapping("/searchi")
	public String searchStudents(@RequestParam("id") int id, ModelMap model) {
	    Optional<Student> student = repo.findById(id);
	    if (student.isPresent()) {
	        model.addAttribute("searchedStudent", student.get());
	        model.addAttribute("message", "Student found!");
	        model.addAttribute("scrollToUpdate", true); // Add this flag
	    } else {
	        model.addAttribute("message", "Student not found!");
	    }
	    return "index"; // Always return to index.jsp
	}
	  @GetMapping("/search")
	    public String searchStudent(@RequestParam("id") int id, ModelMap model) {
	        Optional<Student> student = repo.findById(id);
	        if (student.isPresent()) {
	            model.addAttribute("searchedStudent", student.get());
	            model.addAttribute("message", "Student found!");
	        } else {
	            model.addAttribute("message", "Student not found!");
	        }
	        return "search";
	    }
	  
	  
	    
	  @GetMapping("/vieww")
		public String vieww(ModelMap model) {
			List<Student> students =repo.findAll();
		    model.addAttribute("students", students);
			
			return "result";
		}



}
