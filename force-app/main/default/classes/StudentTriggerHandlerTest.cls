@isTest
private class StudentTriggerHandlerTest {

    @isTest
    static void handleFillCommentTest() {

        List<Student__c> students = new List<Student__c>();

        for(Integer i=0; i<10; i++) {
            Student__c student = new Student__c();
            student.Name = 'Test' + i;
            students.add(student);
        }

        Test.startTest();
        insert students;
        Test.stopTest();

        for(Student__c student : [SELECT Id, Name, Comment__c FROM Student__c]) {
            System.assertEquals('Done', student.Comment__c, 'Comment not filled');
        }
    }
}