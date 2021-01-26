1. Start an authenticated session --> auth()->loginUsingId(2)

2. Ok, now let's add an event listener:
    ```php
    DB::listen(function ($query) { dump($query->sql); dump($query->bindings); dump($query->time); });
    ```
    That's all. Now all queries will be displayed in this session.

3. Some useful commands:

    |   Command     |	Description                                                                 | Alias |
    |---------------|-------------------------------------------------------------------------------|-------|
    |   help        |   Show a list of commands. Type help [foo] for information about [foo].       |   ?   |
    |   ls          |   List local, instance or class variables, methods and constants.             | list, dir |
    |   dump        |   Dump an object or primitive.	                                            |       |
    |   doc         |   Read the documentation for an object, class, constant, method or property.  | rtfm, man |
    |   show        |   Show the code for an object, class, constant, method or property.           |       |	
    |   wtf         |   Show the backtrace of the most recent exception.                            | last-exception, wtf? |
    |   whereami    |   Show where you are in the code.                                             |       |
    |   trace       |   Show the current call stack.	                                            |       |
    |   throw-up    |   Throw an exception out of the Psy Shell.	                                |       |
    |   buffer      |	Show (or clear) the contents of the code input buffer.                      | buf   |
    |   clear       |   Clear the Psy Shell screen.	                                                |       |
    |   history     |	Show the Psy Shell history.	hist                                            |       |
    |   exit        |	End the current session and return to caller.                               | quit, q |
    |   clear-compiled  |	Remove the compiled class file.                                         |       |
    |   down        |	Put the application into maintenance mode.	                                |       |
    |   env         |	Display the current framework environment.	                                |       |
    |   optimize    |   Optimize the framework for better performance.	                            |       |
    |   up          |	Bring the application out of maintenance mode.	                            |       |
    |   migrate     |	Run the database migrations.                                                |       |
    |   inspire     |	Display an inspiring quote.                                                 |       |

4. To use faker in Laravels artisan tinker, all you have to enter is:
    $faker = Faker\Factory::create('it_IT');
    $faker->addProvider(new \Bezhanov\Faker\Provider\Device($faker));
    $faker->name;
    $faker->address;
    $faker->text;
    $faker->sentence(10);
    ->titleMale
    ->realText($maxNbChars = 100, $indexSize = 2) 
    ->randomNumber($nbDigits = 11, $strict = false) // 79907610
    ->randomFloat($nbMaxDecimals = NULL, $min = 0, $max = NULL) // 48.8932
    $faker->numerify('###########');

    Faker\Provider\en_US\Address
        cityPrefix                          // 'Lake'
        secondaryAddress                    // 'Suite 961'
        state                               // 'NewMexico'
        stateAbbr                           // 'OH'
        citySuffix                          // 'borough'
        streetSuffix                        // 'Keys'
        buildingNumber                      // '484'
        city                                // 'West Judge'
        streetName                          // 'Keegan Trail'
        streetAddress                       // '439 Karley Loaf Suite 897'
        postcode                            // '17916'
        address                             // '8888 Cummings Vista Apt. 101, Susanbury, NY 95473'
        country                             // 'Falkland Islands (Malvinas)'
        latitude($min = -90, $max = 90)     // 77.147489
        longitude($min = -180, $max = 180)  // 86.211205
    Faker\Provider\en_US\PhoneNumber
        phoneNumber             // '201-886-0269 x3767'
        tollFreePhoneNumber     // '(888) 937-7238'
        e164PhoneNumber     // '+27113456789
    Faker\Provider\en_US\Company
        catchPhrase             // 'Monitored regional contingency'
        bs                      // 'e-enable robust architectures'
        company                 // 'Bogan-Treutel'
        companySuffix           // 'and Sons'
        jobTitle                // 'Cashier'
    Faker\Provider\Internet
        email                   // 'tkshlerin@collins.com'
        safeEmail               // 'king.alford@example.org'
        freeEmail               // 'bradley72@gmail.com'
        companyEmail            // 'russel.durward@mcdermott.org'
        freeEmailDomain         // 'yahoo.com'
        safeEmailDomain         // 'example.org'
        userName                // 'wade55'
        password                // 'k&|X+a45*2['
        domainName              // 'wolffdeckow.net'
        domainWord              // 'feeney'
        tld                     // 'biz'
        url                     // 'http://www.skilesdonnelly.biz/aut-accusantium-ut-architecto-sit-et.html'
        slug                    // 'aut-repellat-commodi-vel-itaque-nihil-id-saepe-nostrum'
        ipv4                    // '109.133.32.252'
        localIpv4               // '10.242.58.8'
        ipv6                    // '8e65:933d:22ee:a232:f1c1:2741:1f10:117c'
        macAddress              // '43:85:B7:08:10:CA'
    Faker\Provider\Barcode
        ean13          // '4006381333931'
        ean8           // '73513537'
        isbn13         // '9790404436093'
        isbn10         // '4881416324'
    
5. UPDATE DB RECORDS
    App\Models\User::where('id', 1)->update(['username' => 'newusername', 'password' => 'newpassword']);

    => $collect->each(function($item) use ($faker) { $item->update(['descrizion' => $faker->name]); })