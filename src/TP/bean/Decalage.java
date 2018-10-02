package TP.bean;

public class Decalage {
    public int number;
    public Decalage()
    {
        this.number = 0;
    }
    public Decalage(int number)
    {
        this.number = number;
    }
    public void setNumber(int number)
    {
        this.number = number;
    }
    public String to32Bin()
    {
        return String.format("%32s", Integer.toBinaryString(this.number)).replace(' ', '0');
    }
    public String toHex()
    {
        return Integer.toHexString(this.number);
    }
    public int shiftL()
    {
        return this.number=this.number<<1;
    }
    public int shiftR()
    {
        return this.number=this.number>>1;
    }
}
