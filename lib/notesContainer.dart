import 'package:flutter/material.dart';

class notesContainer extends StatelessWidget {
  const notesContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector
    (
      onTap: () => Navigator.of(context).pushNamed('notePage'),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 197, 185, 213),
          borderRadius: BorderRadius.circular(10),
        ),
        height: MediaQuery.sizeOf(context).height / 4.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Row(
                children: [
                  SizedBox(
                    width: 28,
                  ),
                  Text(
                    'Title ...',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    width: 185,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete,
                        size: 28,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 20, bottom: 65),
              child: Text(
                'body .........................',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 230),
              child: Text(
                'date 2000/10/4',
              ),
            )
          ],
        ),
      ),
    );
  }
}
