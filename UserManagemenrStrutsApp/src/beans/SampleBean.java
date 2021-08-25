package beans;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SampleBean {

	private int id;
	private String role;
	
	private List<String> citiesList;
	private List<String> countryList;
	private Map<String, String> propertiesMap;
	
	public int getId() {
		setId(100);
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRole() {
		setRole("Developer");
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public Map<String, String> getPropertiesMap() {
		Map<String, String> props = new HashMap<String, String>();
		props.put("salary", "10000$");
		props.put("group", "directors");
		props.put("company", "journaldev");
		props.put("age", "25 years");
		setPropertiesMap(props);
		return propertiesMap;
	}
	public void setPropertiesMap(Map<String, String> properties) {
		this.propertiesMap = properties;
	}
	public List<String> getCitiesList() {
		List<String> cities = new ArrayList<String>();
		cities.add("San Jose");
		cities.add("New Delhi");
		cities.add("Bangalore");
		cities.add("Los Angeles");
		setCitiesList(cities);
		return citiesList;
	}
	public void setCitiesList(List<String> cities) {
		this.citiesList = cities;
	}
	public List<String> getCountryList() {
		List<String> countries = new ArrayList<String>();
		countries.add("India");
		countries.add("USA");
		countries.add("UK");
		setCountryList(countries);
		return countryList;
	}
	public void setCountryList(List<String> countryList) {
		this.countryList = countryList;
	}
	public String getListProjects() {
		return "yess";
	}
	public String execute(){
		setId(100);
		setRole("Developer");
		
		List<String> cities = new ArrayList<String>();
		cities.add("San Jose");
		cities.add("New Delhi");
		cities.add("Bangalore");
		cities.add("Los Angeles");
		setCitiesList(cities);
		
		List<String> countries = new ArrayList<String>();
		countries.add("India");
		countries.add("USA");
		countries.add("UK");
		setCountryList(countries);
		
		Map<String, String> props = new HashMap<String, String>();
		props.put("salary", "10000$");
		props.put("group", "directors");
		props.put("company", "journaldev");
		props.put("age", "25 years");
		setPropertiesMap(props);
		
		return "SUCCESS";
	}
	
}
