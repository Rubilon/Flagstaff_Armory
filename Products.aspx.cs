using System;

public partial class Products : System.Web.UI.Page
{
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
                if(ddlAWType.Visible == true)
                    ddlAWType.Visible = false;
                lblPrice.Text = "$0.00";
                break;
            case "Armor":
                ddlEquipMaterial.Visible = true;
                if (ddlAWType.Visible == true)
                    ddlAWType.Visible = false;
                lblPrice.Text = "$0.00";
                break;
            default:
                ddlEquipMaterial.Visible = false;
                if (ddlAWType.Visible == true)
                {
                    ddlAWType.Visible = false;
                    ddlAWType.SelectedIndex = 0;
                }
                ddlEquipMaterial.SelectedIndex = 0;
                lblPrice.Text = "$0.00";
                break;
        }
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
    }
    protected void ddlAWType_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}