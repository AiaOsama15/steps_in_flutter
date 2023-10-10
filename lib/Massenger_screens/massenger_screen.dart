import 'package:flutter/material.dart';
//single file to show massangerScreen abudullahMansour
class MessangerScreen extends StatelessWidget {
  const MessangerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //first row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 29,
                    backgroundColor: Colors.blue,
                    child: CircleAvatar(
                      radius: 27,
                      backgroundImage: NetworkImage(
                          'https://media.istockphoto.com/id/1350820098/photo/cute-blue-robot-giving-thumbs-up-3d.jpg?s=612x612&w=0&k=20&c=Nt4Khe_PaRtNwgQ2Pi1RuIDlHrgvyc99pt01_b47BWo='),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: const Text(
                      'Chats',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const CircleAvatar(
                    radius: 20,
                    child: Icon(Icons.camera_alt_rounded),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const CircleAvatar(
                    radius: 20,
                    child: Icon(Icons.pending),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //second row
              Container(
                width: MediaQuery.sizeOf(context).width * 0.9,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.black45,
                  // shape: BoxShape.circle
                ),
                child: const Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.search_rounded,
                      size: 22,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Search',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              //third
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 120,
                // width: 50,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 5,
                        ),
                    itemCount: 10,
                    itemBuilder: (context, index) => storyItem()),
              ),
              const SizedBox(
                height: 18,
              ),
              Expanded(
                child: SizedBox(
                  // height: 130,
                  child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      // physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, item) {
                        return buildchatItem();
                      },
                      separatorBuilder: (context, item) => const SizedBox(
                            height: 9,
                          ),
                      itemCount: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

//function
  Widget storyItem() {
    return const SizedBox(
      width: 80,
      // height: 120,
      child: Column(
        children: [
          CircleAvatar(
            radius: 29,
            backgroundColor: Colors.blue,
            child: CircleAvatar(
              radius: 27,
              backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/id/1350820098/photo/cute-blue-robot-giving-thumbs-up-3d.jpg?s=612x612&w=0&k=20&c=Nt4Khe_PaRtNwgQ2Pi1RuIDlHrgvyc99pt01_b47BWo='),
            ),
          ),
          Text(
            'Aya osama fathey',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }

  Widget buildchatItem() {
    return const SizedBox(
      height: 50,
      child: Row(
        children: [
          CircleAvatar(
            radius: 27,
            backgroundImage: NetworkImage(
                'https://media.istockphoto.com/id/1350820098/photo/cute-blue-robot-giving-thumbs-up-3d.jpg?s=612x612&w=0&k=20&c=Nt4Khe_PaRtNwgQ2Pi1RuIDlHrgvyc99pt01_b47BWo='),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Aya osama fathey',
                textAlign: TextAlign.start,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'hello ,how you doing today , i wanna ask you about sth',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Text('02.00')
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
