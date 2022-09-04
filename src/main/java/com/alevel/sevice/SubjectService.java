package com.alevel.sevice;

import com.alevel.model.Subject;
import com.alevel.repostory.SubjectRepository;

import java.util.Map;

public class SubjectService {

    private SubjectRepository subjectRepository;

    public SubjectService(SubjectRepository subjectRepository) {
        this.subjectRepository = subjectRepository;
    }

    public Map<Double, Subject> findSubject(boolean bestSubject) {
        if (bestSubject) {
            return subjectRepository.findBetterSubject();
        }
        return subjectRepository.findWorstSubject();
    }
}
