// https://salesforce.stackexchange.com/a/159342
String[] sObjTypes = new String[]{'Contract'};
Schema.DescribeSObjectResult[] describeSObjResults = Schema.describeSObjects(sObjTypes);
String str = '\n';
for(Schema.DescribeSObjectResult dsr : describeSObjResults) {
    for(Schema.ChildRelationship cr : dsr.getChildRelationships()) {
        str+= 'sObject: ' + dsr.getName() + ' - Child Relationship API Name: ' + cr.getRelationshipName()+'\n';
    }
}

System.debug(str);
