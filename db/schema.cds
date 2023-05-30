
type POSTN : String (8) @title: 'Position Number' @Analytics.Dimension;
type POSDESC : String (30) @title: 'Position Description' @Analytics.Dimension;
type KOSTL : String (10) @title: 'Cost Center' @Analytics.Dimension;
type ANSAL : Decimal @title: 'Annual Salary' @Analytics.Measure @Aggregation.default : #SUM;
type POSDESC_POSTN : Association to one Positions;
type PERNR : String (8) @title: 'Personnel Number' @Analytics.Dimension;
type CURR : String (3) @title: 'Currency' @Analytics.Dimension ;

entity Employees {
CURR : CURR;
ANSAL : ANSAL @Measures.ISOCurrency : CURR ;
KOSTC : KOSTL @title: 'Cost Center';
POSDESC : POSDESC_POSTN @title: 'Position';
key PERNR : PERNR @mandatory ;
};


entity Positions {
key POSTN : POSTN @Common.Text : POSDESC @mandatory ;
POSDESC : POSDESC ;
EmployeesData: Composition of many Employees on EmployeesData.POSDESC=POSTN @title : `Description Check` ;
};


