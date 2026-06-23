import 'package:flutter/material.dart';


class InterestCard extends StatefulWidget {
 final String image;
 final String title;
 final String description ;
  const InterestCard({super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  State<InterestCard> createState() => _InterestCardState();

}

class _InterestCardState extends State<InterestCard> {
  int maxLinesCount = 2;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(widget.image,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10,),
              Text(widget.title,
                style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              Text(widget.description,
                  maxLines: maxLinesCount,
                style: TextStyle(fontSize: 15,
                    color: Colors.black),),
              SizedBox(height: 10 ,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                    onPressed: (){setState(() {
                      if (maxLinesCount == 2) {
                        maxLinesCount = 100;
                      } else {
                        maxLinesCount = 2;
                      }
                    });},
                    child: Text(maxLinesCount == 2 ?
                    'View More': 'View Less',
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
