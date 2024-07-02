package com.codingdojo.kickball.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.kickball.models.Team;
import com.codingdojo.kickball.repositories.TeamRepository;

@Service
public class TeamService {

@Autowired
TeamRepository tRepo;

// get all expenses
public List<Team> allTeams() {
	return tRepo.findAll();
}

// create new Expense 
public Team newTeam(Team team) {
	return tRepo.save(team);
}

// Get one Expense 
public Team oneTeam(Long id) {
	Optional<Team> team = tRepo.findById(id);
	if (team.isPresent()) {
		return team.get();
	} else {
		return null;
	}
}

public void deleteTeam(Long id) {
	tRepo.deleteById(id);
}

public Team updateTeam(Team team) {
	return tRepo.save(team);
}
}

