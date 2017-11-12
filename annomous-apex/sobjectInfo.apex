public static void printFieldsOfSObject(String apiNameOfObject) {
    SObject obj = Database.query('SELECT Id FROM ' + apiNameOfObject + ' LIMIT 1');
    Schema.sObjectType objectType = obj.getSObjectType();
    String build = '\n' + objectType + '\n=============\n';
    for (String key : objectType.getDescribe().fields.getMap().keySet()) {
        build += key + '\n';
    }
    System.debug(build);
}

printFieldsOfSObject('account');