package com.alevel.repostory;

import com.alevel.model.Subject;

import java.util.Map;

public interface SubjectRepository {

    Map<Double, Subject> findBetterSubject();

    Map<Double, Subject> findWorstSubject();
}
