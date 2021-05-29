package pl.coderslab.entity;


import lombok.Data;
import org.hibernate.validator.constraints.pl.PESEL;
import pl.coderslab.Role;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.util.Collection;
import java.util.List;

@Entity
@Data
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(unique = true)
    @NotBlank
    private String username;
    @NotBlank
    @Pattern(regexp="^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$")
    private String password;
    @Size(min = 3)
    @NotBlank
    @Pattern(regexp = "^[A-Za-z-ąćęłńóśźżĄĆĘŁŃÓŚŹŻ]+$")//wykluczyc liczby i inne znaki
    @NotBlank
    private String firstName;
    @Size(min = 3)
    @NotBlank
    @Pattern(regexp = "^[A-Za-z-ąćęłńóśźżĄĆĘŁŃÓŚŹŻ]+$")
    private String lastName;
    @ElementCollection
    private List<String> positions;
    @PESEL
    @Column(unique = true)
    @NotBlank
    private String pesel;
    @NotBlank
    @Size(min=3)
    private String street;
    @Pattern(regexp="^(0|[1-9][0-9]*)$")
    @NotBlank
    private String streetNr;
    @Pattern(regexp="^(0|[1-9][0-9]*)$")
    private String houseNr;
    @Pattern(regexp = "[0-9]{2}-[0-9]{3}")
    @NotBlank
    private String postalCode;
    @Pattern(regexp = "^(0|[0-9]{9})*$")
    private String phoneNr;
    @Column(unique = true, length = 30)
    @Email
    private String email;
    @ElementCollection
    private List <String> skills;
    private String description;
    private int enabled;

    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
//    @ManyToMany
    @JoinTable(
            name = "users_roles",
            joinColumns = @JoinColumn(
                    name = "user_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(
                    name = "role_id", referencedColumnName = "id"))
    private Collection<Role> roles;
    @ManyToMany
    private List<WorkArea> workAreas;
    @ManyToMany
    private List<Objective>objectives;

    public User() {
    }

    public User(Long id, String username, String password, String firstName, String lastName, List<String> positions, String pesel, String street, String streetNr, String houseNr, String postalCode, String phoneNr, String email, List<String> skills, String description, int enabled, Collection<Role> roles, List<WorkArea> workAreas, List<Objective> objectives) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.positions = positions;
        this.pesel = pesel;
        this.street = street;
        this.streetNr = streetNr;
        this.houseNr = houseNr;
        this.postalCode = postalCode;
        this.phoneNr = phoneNr;
        this.email = email;
        this.skills = skills;
        this.description = description;
        this.enabled = enabled;
        this.roles = roles;
        this.workAreas = workAreas;
        this.objectives = objectives;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public List<String> getPositions() {
        return positions;
    }

    public void setPositions(List<String> positions) {
        this.positions = positions;
    }

    public String getPesel() {
        return pesel;
    }

    public void setPesel(String pesel) {
        this.pesel = pesel;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getStreetNr() {
        return streetNr;
    }

    public void setStreetNr(String streetNr) {
        this.streetNr = streetNr;
    }

    public String getHouseNr() {
        return houseNr;
    }

    public void setHouseNr(String houseNr) {
        this.houseNr = houseNr;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getPhoneNr() {
        return phoneNr;
    }

    public void setPhoneNr(String phoneNr) {
        this.phoneNr = phoneNr;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public List<String> getSkills() {
        return skills;
    }

    public void setSkills(List<String> skills) {
        this.skills = skills;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getEnabled() {
        return enabled;
    }

    public void setEnabled(int enabled) {
        this.enabled = enabled;
    }

    public Collection<Role> getRoles() {
        return roles;
    }

    public void setRoles(Collection<Role> roles) {
        this.roles = roles;
    }

    public List<WorkArea> getWorkAreas() {
        return workAreas;
    }

    public void setWorkAreas(List<WorkArea> workAreas) {
        this.workAreas = workAreas;
    }

    public List<Objective> getObjectives() {
        return objectives;
    }

    public void setObjectives(List<Objective> objectives) {
        this.objectives = objectives;
    }
}
