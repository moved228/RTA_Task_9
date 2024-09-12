public with sharing class StudentTriggerHandler {
    public void run(){
        if (Trigger.isBefore && Trigger.isInsert) {
            handleFillComment((List<Student__c>) Trigger.new);
        }
    }

    private static void handleFillComment(List<Student__c> students) {
        for (Student__c student : students) {
            student.Comment__c = 'Done';
        }
    }
}