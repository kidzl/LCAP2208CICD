using { MyTestCICD as my } from '../db/schema';

@path : 'service/MyTestCICD'
service MyTestCICDService
{
    entity SrvBooks as
        projection on my.Books
        {
            *
        };
}

annotate MyTestCICDService with @requires :
[
    'authenticated-user'
];
