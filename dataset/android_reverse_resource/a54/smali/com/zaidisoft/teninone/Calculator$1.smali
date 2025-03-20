.class Lcom/zaidisoft/teninone/Calculator$1;
.super Ljava/lang/Object;
.source "Calculator.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zaidisoft/teninone/Calculator;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zaidisoft/teninone/Calculator;


# direct methods
.method constructor <init>(Lcom/zaidisoft/teninone/Calculator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zaidisoft/teninone/Calculator;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v3, 0x7f090040

    const/4 v2, 0x1

    .line 50
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 132
    :goto_0
    return v2

    .line 52
    :sswitch_0
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    iget-object v1, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-virtual {v1}, Lcom/zaidisoft/teninone/Calculator;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zaidisoft/teninone/Calculator;->access$002(Lcom/zaidisoft/teninone/Calculator;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    .line 53
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$000(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/zaidisoft/teninone/TipCalculator;

    invoke-direct {v1}, Lcom/zaidisoft/teninone/TipCalculator;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 54
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$000(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 55
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-virtual {v0}, Lcom/zaidisoft/teninone/Calculator;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d0086

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 56
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 57
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$100(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto :goto_0

    .line 60
    :sswitch_1
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    iget-object v1, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-virtual {v1}, Lcom/zaidisoft/teninone/Calculator;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zaidisoft/teninone/Calculator;->access$002(Lcom/zaidisoft/teninone/Calculator;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    .line 61
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$000(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/zaidisoft/teninone/PercentCalculator;

    invoke-direct {v1}, Lcom/zaidisoft/teninone/PercentCalculator;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 62
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$000(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 63
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-virtual {v0}, Lcom/zaidisoft/teninone/Calculator;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d0065

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 64
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 65
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$100(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto :goto_0

    .line 68
    :sswitch_2
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    iget-object v1, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-virtual {v1}, Lcom/zaidisoft/teninone/Calculator;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zaidisoft/teninone/Calculator;->access$002(Lcom/zaidisoft/teninone/Calculator;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    .line 69
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$000(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/zaidisoft/teninone/SimpleInterestCalculator;

    invoke-direct {v1}, Lcom/zaidisoft/teninone/SimpleInterestCalculator;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 70
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$000(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 71
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-virtual {v0}, Lcom/zaidisoft/teninone/Calculator;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d007c

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 72
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 73
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$100(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto/16 :goto_0

    .line 76
    :sswitch_3
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    iget-object v1, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-virtual {v1}, Lcom/zaidisoft/teninone/Calculator;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zaidisoft/teninone/Calculator;->access$002(Lcom/zaidisoft/teninone/Calculator;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    .line 77
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$000(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/zaidisoft/teninone/ShoppingCalculator;

    invoke-direct {v1}, Lcom/zaidisoft/teninone/ShoppingCalculator;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 78
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$000(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 79
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-virtual {v0}, Lcom/zaidisoft/teninone/Calculator;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d003c

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 80
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 81
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$100(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto/16 :goto_0

    .line 84
    :sswitch_4
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    iget-object v1, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-virtual {v1}, Lcom/zaidisoft/teninone/Calculator;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zaidisoft/teninone/Calculator;->access$002(Lcom/zaidisoft/teninone/Calculator;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    .line 85
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$000(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/zaidisoft/teninone/UnitPriceCalculator;

    invoke-direct {v1}, Lcom/zaidisoft/teninone/UnitPriceCalculator;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 86
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$000(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 87
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-virtual {v0}, Lcom/zaidisoft/teninone/Calculator;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d006a

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 88
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 89
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$100(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto/16 :goto_0

    .line 92
    :sswitch_5
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    iget-object v1, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-virtual {v1}, Lcom/zaidisoft/teninone/Calculator;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zaidisoft/teninone/Calculator;->access$002(Lcom/zaidisoft/teninone/Calculator;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    .line 93
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$000(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/zaidisoft/teninone/BMIConverter;

    invoke-direct {v1}, Lcom/zaidisoft/teninone/BMIConverter;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 94
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$000(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 95
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-virtual {v0}, Lcom/zaidisoft/teninone/Calculator;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d0025

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 96
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 97
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$100(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto/16 :goto_0

    .line 100
    :sswitch_6
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    iget-object v1, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-virtual {v1}, Lcom/zaidisoft/teninone/Calculator;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zaidisoft/teninone/Calculator;->access$002(Lcom/zaidisoft/teninone/Calculator;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    .line 101
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$000(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/zaidisoft/teninone/TemperatureConverter;

    invoke-direct {v1}, Lcom/zaidisoft/teninone/TemperatureConverter;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 102
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$000(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 103
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-virtual {v0}, Lcom/zaidisoft/teninone/Calculator;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d0080

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 104
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 105
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$100(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto/16 :goto_0

    .line 108
    :sswitch_7
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    iget-object v1, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-virtual {v1}, Lcom/zaidisoft/teninone/Calculator;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zaidisoft/teninone/Calculator;->access$002(Lcom/zaidisoft/teninone/Calculator;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    .line 109
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$000(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/zaidisoft/teninone/LengthConverter;

    invoke-direct {v1}, Lcom/zaidisoft/teninone/LengthConverter;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 110
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$000(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 111
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-virtual {v0}, Lcom/zaidisoft/teninone/Calculator;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d0056

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 112
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 113
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$100(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto/16 :goto_0

    .line 116
    :sswitch_8
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    iget-object v1, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-virtual {v1}, Lcom/zaidisoft/teninone/Calculator;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zaidisoft/teninone/Calculator;->access$002(Lcom/zaidisoft/teninone/Calculator;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    .line 117
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$000(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/zaidisoft/teninone/MassConverter;

    invoke-direct {v1}, Lcom/zaidisoft/teninone/MassConverter;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 118
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$000(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 119
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-virtual {v0}, Lcom/zaidisoft/teninone/Calculator;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d0057

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 120
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 121
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$100(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto/16 :goto_0

    .line 124
    :sswitch_9
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    iget-object v1, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-virtual {v1}, Lcom/zaidisoft/teninone/Calculator;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zaidisoft/teninone/Calculator;->access$002(Lcom/zaidisoft/teninone/Calculator;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    .line 125
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$000(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/zaidisoft/teninone/CookingConverter;

    invoke-direct {v1}, Lcom/zaidisoft/teninone/CookingConverter;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 126
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$000(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 127
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-virtual {v0}, Lcom/zaidisoft/teninone/Calculator;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d003b

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 128
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 129
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator$1;->this$0:Lcom/zaidisoft/teninone/Calculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/Calculator;->access$100(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto/16 :goto_0

    .line 50
    :sswitch_data_0
    .sparse-switch
        0x7f090029 -> :sswitch_5
        0x7f090047 -> :sswitch_9
        0x7f090054 -> :sswitch_3
        0x7f090079 -> :sswitch_2
        0x7f090087 -> :sswitch_7
        0x7f09008f -> :sswitch_8
        0x7f0900ab -> :sswitch_1
        0x7f0900eb -> :sswitch_6
        0x7f0900f7 -> :sswitch_0
        0x7f09010d -> :sswitch_4
    .end sparse-switch
.end method
