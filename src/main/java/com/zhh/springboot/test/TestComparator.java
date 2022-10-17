package com.zhh.springboot.test;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class TestComparator {
    public static void main(String[] args) {

        List<Person> people = new ArrayList<>();
        people.add(new Person("Zhang", 19));
        people.add(new Person("Li", 22));
        people.add(new Person("Lili", 40));
        people.add(new Person("Harry", 19));
        people.add(new Person("Brues", 16));

        people.sort(Comparator.comparing(Person::getName));

        people.sort(Comparator.comparing(Person::getAge).reversed());

        people.forEach(person -> {
            System.out.println("p :" + person);
        });


    }
}

class Person {
    private String name;
    private int age;


    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "Person{" +
                "name='" + name + '\'' +
                ", age=" + age +
                '}';
    }
}