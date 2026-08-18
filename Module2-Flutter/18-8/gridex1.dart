import 'package:flutter/material.dart';

class DynamicGrid extends StatefulWidget
{
  const DynamicGrid({super.key});

  @override
  State<DynamicGrid> createState() => _DynamicGridState();
}

class _DynamicGridState extends State<DynamicGrid>
{
  List imagelist=["https://media.istockphoto.com/id/184276818/photo/red-apple.jpg?s=612x612&w=0&k=20&c=NvO-bLsG0DJ_7Ii8SSVoKLurzjmV0Qi4eGfn6nW3l5w=",
  "https://t3.ftcdn.net/jpg/12/84/61/66/360_F_1284616641_CmN8lyHm3QtTL7NWzthuJoBE4FzSJiBZ.jpg",
  "https://thumbs.dreamstime.com/b/one-strawberry-fruit-half-cut-isolated-white-background-copy-space-single-clipping-path-fresh-harvested-homegrown-208803511.jpg",
  "https://media.istockphoto.com/id/184276818/photo/red-apple.jpg?s=612x612&w=0&k=20&c=NvO-bLsG0DJ_7Ii8SSVoKLurzjmV0Qi4eGfn6nW3l5w=",
  "https://t3.ftcdn.net/jpg/12/84/61/66/360_F_1284616641_CmN8lyHm3QtTL7NWzthuJoBE4FzSJiBZ.jpg",
  "https://thumbs.dreamstime.com/b/one-strawberry-fruit-half-cut-isolated-white-background-copy-space-single-clipping-path-fresh-harvested-homegrown-208803511.jpg",
  "https://media.istockphoto.com/id/184276818/photo/red-apple.jpg?s=612x612&w=0&k=20&c=NvO-bLsG0DJ_7Ii8SSVoKLurzjmV0Qi4eGfn6nW3l5w=",
  "https://t3.ftcdn.net/jpg/12/84/61/66/360_F_1284616641_CmN8lyHm3QtTL7NWzthuJoBE4FzSJiBZ.jpg",
  "https://thumbs.dreamstime.com/b/one-strawberry-fruit-half-cut-isolated-white-background-copy-space-single-clipping-path-fresh-harvested-homegrown-208803511.jpg",
    "https://media.istockphoto.com/id/184276818/photo/red-apple.jpg?s=612x612&w=0&k=20&c=NvO-bLsG0DJ_7Ii8SSVoKLurzjmV0Qi4eGfn6nW3l5w=",
    "https://t3.ftcdn.net/jpg/12/84/61/66/360_F_1284616641_CmN8lyHm3QtTL7NWzthuJoBE4FzSJiBZ.jpg",
    "https://thumbs.dreamstime.com/b/one-strawberry-fruit-half-cut-isolated-white-background-copy-space-single-clipping-path-fresh-harvested-homegrown-208803511.jpg",
    "https://media.istockphoto.com/id/184276818/photo/red-apple.jpg?s=612x612&w=0&k=20&c=NvO-bLsG0DJ_7Ii8SSVoKLurzjmV0Qi4eGfn6nW3l5w=",
    "https://t3.ftcdn.net/jpg/12/84/61/66/360_F_1284616641_CmN8lyHm3QtTL7NWzthuJoBE4FzSJiBZ.jpg",
    "https://thumbs.dreamstime.com/b/one-strawberry-fruit-half-cut-isolated-white-background-copy-space-single-clipping-path-fresh-harvested-homegrown-208803511.jpg",
    "https://media.istockphoto.com/id/184276818/photo/red-apple.jpg?s=612x612&w=0&k=20&c=NvO-bLsG0DJ_7Ii8SSVoKLurzjmV0Qi4eGfn6nW3l5w=",
    "https://t3.ftcdn.net/jpg/12/84/61/66/360_F_1284616641_CmN8lyHm3QtTL7NWzthuJoBE4FzSJiBZ.jpg",
    "https://thumbs.dreamstime.com/b/one-strawberry-fruit-half-cut-isolated-white-background-copy-space-single-clipping-path-fresh-harvested-homegrown-208803511.jpg"];
  List textlist=
  [
    "apple",
    "grapes",
    "strawberry",
    "apple",
    "grapes",
    "strawberry",
    "apple",
    "grapes",
    "strawberry",
    "apple",
    "grapes",
    "strawberry",
    "apple",
    "grapes",
    "strawberry",
    "apple",
    "grapes",
    "strawberry"
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Dynamic List"),),
        body: GridView.builder(
            itemCount: imagelist.length,
            itemBuilder: (BuildContext context, int index)
            {
              return ListTile
                (
                  leading: Image.network(imagelist[index]),
                  title: Text(textlist[index]),
                  onTap:()
                  {
                      print("My data is : ${textlist[index]}");
                  },
                );
            }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

          ),
      );
  }
}
