@IsTest class StateCodesTest
{
    @IsTest static void testStart()
    {
        // arrange
        Database.Batchable<String> batch = new StateCodes();
        
        // act
        Iterable<String> iterable = batch.start(null);
        
        // assert
        System.assert(iterable.iterator().hasNext());
    }
    
    @IsTest static void testExecute()
    {
        // arrange
        Database.Batchable<String> batch = new StateCodes();
        
        // act
        batch.execute(null, new List<String>{'US-CA'});
        
        // assert
        System.assertEquals(2, Limits.getCallouts());
    }
}
