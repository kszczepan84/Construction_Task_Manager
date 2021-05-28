package pl.coderslab.test;

import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class test {
    static void getNewPositions() {
        List<String> intList = new ArrayList<String>();
        intList.add("Manager");
        intList.add("Supervisor");
        intList.add("Operator");
        intList.stream().
                collect(Collectors.joining(" "));
    }

        public static void main (String[]args){
            getNewPositions();


        }
    }
//    @ModelAttribute("positions")
//    public List<String> getNewPositions() {
//        return Arrays.asList("Manager", "Supervisor", "Operator");
//    }