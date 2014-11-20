using System;

public partial class Products : System.Web.UI.Page
{
    public double price;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlEquip.Items.Add("");
            ddlEquip.Items.Add("Weapon");
            ddlEquip.Items.Add("Armor");
        }
    }
    protected void ddlEquip_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (ddlEquip.SelectedValue)
        {
            case "Weapon":
                ddlEquipMaterial.Visible = true;
                if (ddlAWType.Visible == true)
                    ddlAWType.Visible = false;
                break;
            case "Armor":
                ddlEquipMaterial.Visible = true;
                if (ddlAWType.Visible == true)
                    ddlAWType.Visible = false;
                break;
            default:
                ddlEquipMaterial.Visible = false;
                if (ddlAWType.Visible == true)
                {
                    ddlAWType.Visible = false;
                    ddlAWType.SelectedIndex = 0;
                }
                ddlEquipMaterial.SelectedIndex = 0;
                break;
        }
        spPrice.Visible = false;
    }
    protected void ddlEquipMaterial_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (ddlEquipMaterial.SelectedValue)
        {
            case "PVC":
                ddlAWType.Visible = true;
                break;
            case "Foam":
                ddlAWType.Visible = true;
                break;
            case "Fiberglass":
                ddlAWType.Visible = true;
                break;
            default:
                ddlAWType.Visible = false;
                ddlAWType.SelectedIndex = 0;
                break;
        }
        spPrice.Visible = false;
    }
    protected void ddlAWType_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (ddlAWType.SelectedValue)
        {
            case "Dagger":
                price = 10;
                break;
            case "One-Handed":
                price = 15;
                break;
            case "Two-Handed":
                price = 50;
                break;
            case "Shield":
                price = 30;
                break;
            case "Armor":
                if (ddlEquipMaterial.SelectedValue == "Foam")
                {
                    price = 50;
                }
                else if (ddlEquipMaterial.SelectedValue == "PVC")
                {
                    price = 80;
                }
                break;
            default:
                spPrice.Visible = false;
                break;
        }
        spPrice.Text = String.Format("{0:C}", price);
        spPrice.Visible = true;
    }
}