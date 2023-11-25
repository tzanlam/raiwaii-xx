DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE Testing_System_Assignment_1;

USE Testing_System_Assignment_1;

DROP TABLE IF  EXISTS `Account`;
CREATE TABLE `Account`(
	AccountID		INT,
    Email 			VARCHAR(50),
    UserName 		VARCHAR(50),
    FullName 	VARCHAR(50),
	DepartmentID 	INT,
    PostionID 		INT,
    CreateDate 		DATE 
);

DROP TABLE IF EXISTS `Department`;
CREATE TABLE `Department` (
	DepartmentID	INT,
    DepartmentName	VARCHAR(50)
);

DROP TABLE IF EXISTS `group`;
CREATE TABLE `Group`(
	GroupID			INT,
    GroupName		VARCHAR(50),
    CreatorID		INT,
    CreateDate		DATE
);

DROP TABLE IF EXISTS `GroupAccount`;
CREATE TABLE `GroupAccount`(
	GroupID 		INT,
    AccountID		INT,
    JoinDate		DATE
);

DROP TABLE IF EXISTS `TypeQuestion`;
CREATE TABLE `TypeQuestion`(
	TypeID			INT,
    TypeName		VARCHAR(50)
);

CREATE TABLE `CategoryQuestion`(
	CategoryID 		INT,
    CategoryName	VARCHAR(50)
);

CREATE TABLE `Question` (
	QuestionID		INT,
    Content			VARCHAR(50),
    CategoryID		INT,
    TypeID			INT,
    CreatorID		INT,
    CreatDate		DATE
);

CREATE TABLE `Answer` (
	AnswerID		INT,
    Content			VARCHAR(50),
    QuestionID		INT,
    isCorrect		BIT
);

CREATE TABLE `Exam` (
	ExamID		INT,
    CodeEX		INT,
    Title		VARCHAR(50),
    CategoryID	INT,
    Duration	TIME,
    CreatorID	INT,
    CreateDate	DATE
);

CREATE TABLE `ExamQuestion` (
	ExamID 		INT,
    QuestionID	INT
);