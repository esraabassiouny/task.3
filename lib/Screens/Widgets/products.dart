import 'package:flutter/material.dart';

Widget ProductItem(){
  Color color=Colors.brown;
  return Container(
    height: 320,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.brown[100]?.withOpacity(0.4),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Expanded(
      child: Column(
        children:
        [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
            [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: color ,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text('-50%',style:TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
                ),
              ),
              IconButton(onPressed: (){},
                  icon: Icon(Icons.favorite_border),
                color: Colors.red[500],
              ),
            ],
          ),
          InkWell(
            onTap: (){},
            child: Container(
              margin: EdgeInsets.all(10),
              child: Image.asset('assets/Images/Laptop (2).png',width:120 ,height:120 ,),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 8),
            margin: EdgeInsets.only(left: 8),
            alignment: Alignment.centerLeft,
            child: Text('title',style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
            ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 8),
            alignment: Alignment.centerLeft,
            child: Text('Write Description of product',style: TextStyle(
                fontSize: 15,
            ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                [
                  Text('\$100',style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),),
                  IconButton(
                      onPressed:(){},
                      icon:Icon(Icons.add_shopping_cart_rounded),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget Category_Products()
{
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: GridView.builder(
      itemCount: 20,
      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 350,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder:(context,index)=>ProductItem(),
    ),
  );
}