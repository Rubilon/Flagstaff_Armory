using System;

public partial class Products : System.Web.UI.Page
{
    public double price;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }
    protected void btnArmor_Click(object sender, EventArgs e)
    {
        tblEQSelection.Visible = false;
        tblMaterialSelection.Visible = true;
        trAMaterials.Visible = true;
        trAMatSelection.Visible = true;
        btnBack.Visible = true;
        lblType.InnerText = "Armor";
    }
    protected void btnWeapon_Click(object sender, EventArgs e)
    {
        tblEQSelection.Visible = false;
        tblMaterialSelection.Visible = true;
        trWMaterials.Visible = true;
        trWMatSelection.Visible = true;
        btnBack.Visible = true;
        lblType.InnerText = "Weapon";
    }
    protected void btnAFoam_Click(object sender, EventArgs e)
    {
        tblMaterialSelection.Visible = false;
        tblFoamArmorSelection.Visible = true;
        trAFoamArmor.Visible = true;
        trAFoamArmorChoice.Visible = true;
        lblMaterial.InnerText = "Foam";
    }
    protected void btnAPvC_Click(object sender, EventArgs e)
    {
        tblMaterialSelection.Visible = false;
        tblPvCArmorSelection.Visible = true;
        lblMaterial.InnerText = "PvC";
    }
    protected void btnWPvC_Click(object sender, EventArgs e)
    {
        tblMaterialSelection.Visible = false;
        tblWeapons.Visible = true;
        trPvCWeapons.Visible = true;
        trWPvCSelection.Visible = true;
        lblMaterial.InnerText = "PvC";
    }
    protected void btnWFiberglass_Click(object sender, EventArgs e)
    {
        tblMaterialSelection.Visible = false;
        tblWeapons.Visible = true;
        trFGWeapons.Visible = true;
        trWFGSelection.Visible = true;
        lblMaterial.InnerText = "Fiberglass";
    }
    protected void btnAFoamArmor_Click(object sender, EventArgs e)
    {

    }
    protected void btnAFoamShield_Click(object sender, EventArgs e)
    {

    }
    protected void btnAPvCArmor_Click(object sender, EventArgs e)
    {

    }
    protected void btnPvCArmor_Click(object sender, EventArgs e)
    {

    }
    protected void btnFG2H_Click(object sender, EventArgs e)
    {

    }
    protected void btnPvCDag_Click(object sender, EventArgs e)
    {

    }
    protected void btnPvC1H_Click(object sender, EventArgs e)
    {

    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        if (tblPvCArmorSelection.Visible)
        {
            tblPvCArmorSelection.Visible = false;
            tblMaterialSelection.Visible = true;
            lblMaterial.InnerText = "";
        }
        else if (tblFoamArmorSelection.Visible)
        {
            tblFoamArmorSelection.Visible = false;
            tblMaterialSelection.Visible = true;
            lblMaterial.InnerText = "";
        }
        else if (tblWeapons.Visible)
        {
            if (trFGWeapons.Visible)
            {
                trFGWeapons.Visible = false;
                trWFGSelection.Visible = false;
                tblWeapons.Visible = false;
                tblMaterialSelection.Visible = true;
                lblMaterial.InnerText = "";
            }
            else if (trPvCWeapons.Visible)
            {
                trPvCWeapons.Visible = false;
                trWPvCSelection.Visible = false;
                tblWeapons.Visible = false;
                tblMaterialSelection.Visible = true;
                lblMaterial.InnerText = "";
            }
        }
        else if (tblMaterialSelection.Visible)
        {
            tblMaterialSelection.Visible = false;
            trAMaterials.Visible = false;
            trAMatSelection.Visible = false;
            trWMaterials.Visible = false;
            trWMatSelection.Visible = false;
            tblEQSelection.Visible = true;
            btnBack.Visible = false;
            lblType.InnerText = "";   
        }
    }
}