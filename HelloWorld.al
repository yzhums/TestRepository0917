query 50100 "ZY Purchase Order Query"
{
    Caption = 'ZY Purchase Order Query';
    OrderBy = Descending(Buy_from_Vendor_No_);
    QueryCategory = 'Vendor List', 'Purchase Order List';
    elements
    {
        dataitem(Purchase_Header; "Purchase Header")
        {
            column(Buy_from_Vendor_No_; "Buy-from Vendor No.")
            {
                //ToolTip = 'Specifies the number of the vendor who delivers the products.';
                ToolTipML = ENU = 'Specifies the number of the vendor who delivers the products.';
            }
            column(Buy_from_Vendor_Name; "Buy-from Vendor Name")
            {
                ToolTip = 'Specifies the name of the vendor who delivers the products.';
            }
            column(Order_Date; "Order Date")
            {
                ToolTip = 'Specifies the date when the purchase order was created.';
            }
            column(Amount_Including_VAT; "Amount Including VAT")
            {
                ToolTip = 'Specifies the total amount of the purchase order including VAT.';
            }
            dataitem(Purchase_Line; "Purchase Line")
            {
                DataItemLink = "Document Type" = Purchase_Header."Document Type",
                "Document No." = Purchase_Header."No.";
                column(No_; "No.")
                {
                    ToolTip = 'Specifies the line number of the purchase order.';
                }
                column(Description; Description)
                {
                    ToolTip = 'Specifies the description of the item.';
                }
                column(Quantity; Quantity)
                {
                    ToolTip = 'Specifies the quantity of the item.';
                }
                column(Amount; Amount)
                {
                    ToolTip = 'Specifies the amount of the purchase order line.';
                }
                dataitem(Item; Item)
                {
                    DataItemLink = "No." = Purchase_Line."No.";
                    column(Inventory; Inventory)
                    {
                        ToolTip = 'Specifies the number of the item.';
                    }
                }
            }
        }
    }
}