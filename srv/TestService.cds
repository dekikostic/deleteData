using {Positions as positions, Employees as employees } from  '../db/schema';


service TestService{
    entity Positions as projection on positions;

    @(Common.SideEffects.TargetEntities: ['/TestService.EntityContainer/Positions'])
    action deleteData();

    entity Employees as projection on employees;
}