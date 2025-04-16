class Product
{
    int pcode;
    String pname;
    int price;

    Product(int pcode,String pname,int price)
    {
      this.pcode=pcode;
      this.pname=pname;
      this.price=price;
    }

    void display(){
        System.out.println("Product Code :"+pcode);
        System.out.println("Product Name :"+pname);
        System.out.println("Product Price :"+price);
    }

    public static void main(String ar[])
    {
        Product p1=new Product(101,"TV",2000);
        Product p2= new Product(102,"FRIDGE",3000);
        Product p3=new Product(103,"LAPTOP",1000);

        System.out.println("Product with the lowest price is:");

        if(p1.price< p2.price && p1.price <p3.price){
            p1.display();
        }
        else if(p2.price< p3.price){
            p2.display();
        }
        else{
            p3.display();
        }


    }
}