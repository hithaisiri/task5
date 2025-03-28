-- Assign Grades to Students Based on Total Scores
SELECT 
    StudentID,
    Name,
    TotalScore,
    CASE
        WHEN TotalScore >= 90 THEN 'A'
        WHEN TotalScore >= 80 THEN 'B'
        WHEN TotalScore >= 70 THEN 'C'
        ELSE 'D (Fail)'
    END AS Grade
FROM 
    Students;

-- Identify Pass/Fail Status in Math Scores
SELECT 
    StudentID,
    Name,
    MathScore,
    CASE
        WHEN MathScore >= 40 THEN 'Pass'
        ELSE 'Fail'
    END AS Math_Status
FROM 
    Students;

-- Add ScienceScore to the Table (Optional Step)
ALTER TABLE Students
ADD ScienceScore INT;

-- Update Sample Data for ScienceScore
UPDATE Students
SET ScienceScore = 
    CASE 
        WHEN StudentID = 1 THEN 65
        WHEN StudentID = 2 THEN 75
        WHEN StudentID = 3 THEN 55
        WHEN StudentID = 4 THEN 35
        WHEN StudentID = 5 THEN 80
        WHEN StudentID = 6 THEN 45
        WHEN StudentID = 7 THEN 85
        WHEN StudentID = 8 THEN 50
    END;

-- Check Pass/Fail Status for Both Math and Science
SELECT 
    StudentID,
    Name,
    MathScore,
    CASE
        WHEN MathScore >= 40 THEN 'Pass'
        ELSE 'Fail'
    END AS Math_Status,
    ScienceScore,
    CASE
        WHEN ScienceScore >= 40 THEN 'Pass'
        ELSE 'Fail'
    END AS Science_Status
FROM 
    Students;
