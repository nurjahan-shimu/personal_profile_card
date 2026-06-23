import 'package:flutter/material.dart';
import 'interest_card.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  

  String name = 'Nurjahan Shimu';
  String profession = 'Flutter Developer';
  String bio = 'Passionate about creating user-friendly and engaging digital experiences.';
  String email = 'nurjahanshimu379@gmail.com';
  String phone = '01800-000000';

  void showProfileDialog(){
    showDialog(context: context,
        builder: (context){
      return AlertDialog(
        title: Text('Details:'),
        content: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Name: $name',style:
              TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 7,),

              Text('Profession: $profession',style:
              TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 7,),

              Text('Bio: $bio',style:
              TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 7,),

              Text('E-mail: $email',style:
              TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 7,),

              Text('Phone: $phone',style:
              TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 7,),
            ],
          ),
        ),

        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
            },
              child: Text("Close")
          )
        ],
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Card',style:
        TextStyle(
          color : Colors.white,
        ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),

                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.blueGrey,
                        backgroundImage: AssetImage("assets/profile.jpg"),
                        ),

                  SizedBox(height: 8),

                  Text(name,style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                    SizedBox(height: 8),

                    Text(profession,style: TextStyle(
                      fontSize: 16,
                      color: Colors.black45
                      ,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height: 8),

                    Text(bio,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    ),

                    SizedBox(height: 8),
                      Divider(),
                      SizedBox(height: 8),

                    Row(
                      children: [
                        Icon(Icons.email, color: Colors.black),
                        SizedBox(width: 12),
                        Text(email, style: TextStyle(fontSize: 14)),
                      ],
                    ),
                      SizedBox(height: 12),

                      Row(
                        children: [
                          Icon(Icons.phone, color: Colors.black),
                          SizedBox(width: 12),
                          Text(phone, style: TextStyle(fontSize: 14)),
                        ],
                      ),

                      SizedBox(height: 15,),
                      Divider(),
                      SizedBox(height: 15,),

                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueAccent,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)
                                )
                              ),
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Following Nurjahan Shimu'),
                                  ),
                                );
                              },

                              child: Text('Follow',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),

                          SizedBox(width: 12),

                          Expanded(
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.grey,
                                foregroundColor: Colors.white,
                                side: BorderSide(color: Colors.grey.shade300),
                                padding: const EdgeInsets.symmetric(),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)
                                ),
                              ),
                              onPressed:showProfileDialog,
                              child: Text('View Details',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500)
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                ),
              ),
            ),
            ),

          SizedBox(height: 25,),

          Row(
            children:[
              Expanded(child: Divider(thickness: 1, endIndent: 10)),
              Text(
                'Interests',
                style: TextStyle(fontSize: 18,
                    color: Colors.black87),
              ),
              Expanded(child: Divider(thickness: 1, indent: 10)),
            ],
          ),

          SizedBox(height: 16),

            Row(
            children:[
              Expanded(
                child: InterestCard(
                  image: 'https://imgs.search.brave.com/jptHUOOk0W5vmvkMHajcb6VtWeMO3kTkf6qkwMtHo7A/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdDQu/ZGVwb3NpdHBob3Rv/cy5jb20vNDY0MDEx/MS80MTA3Mi9pLzQ1/MC9kZXBvc2l0cGhv/dG9zXzQxMDcyMTIz/Ni1zdG9jay1waG90/by1wbGFubmluZy12/YWNhdGlvbi10cmF2/ZWwtcGxhbi10cmlw/LmpwZw',
                  title: 'Travel',
                  description: 'Exploring new places around the world',
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: InterestCard(
                  image: 'https://imgs.search.brave.com/RJL8Eqg29cWMslxsnUZByR3QDsWqE0Cf2n7uSVb4JFE/'
                      'rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNzgv/NTczLzExNy9zbWFs/bC93b21hbi10YWtp/bmctd2l0aC1jYW1l/cmEtcGhvdG8uanBn',
                  title: 'Photography',
                  description: 'Capturing moments through the lens',
                ),
              ),
            ],
          ),
          ]
        ),
      ),
    );
  }
}

