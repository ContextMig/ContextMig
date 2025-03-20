.class Lcom/zaidisoft/teninone/UnitPriceCalculator$1;
.super Ljava/lang/Object;
.source "UnitPriceCalculator.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zaidisoft/teninone/UnitPriceCalculator;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zaidisoft/teninone/UnitPriceCalculator;


# direct methods
.method constructor <init>(Lcom/zaidisoft/teninone/UnitPriceCalculator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zaidisoft/teninone/UnitPriceCalculator;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator$1;->this$0:Lcom/zaidisoft/teninone/UnitPriceCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 74
    packed-switch p2, :pswitch_data_0

    .line 86
    iget-object v0, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator$1;->this$0:Lcom/zaidisoft/teninone/UnitPriceCalculator;

    invoke-static {v0, v2}, Lcom/zaidisoft/teninone/UnitPriceCalculator;->access$002(Lcom/zaidisoft/teninone/UnitPriceCalculator;I)I

    .line 87
    iget-object v0, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator$1;->this$0:Lcom/zaidisoft/teninone/UnitPriceCalculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/UnitPriceCalculator;->access$100(Lcom/zaidisoft/teninone/UnitPriceCalculator;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator$1;->this$0:Lcom/zaidisoft/teninone/UnitPriceCalculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/UnitPriceCalculator;->access$200(Lcom/zaidisoft/teninone/UnitPriceCalculator;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v0, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator$1;->this$0:Lcom/zaidisoft/teninone/UnitPriceCalculator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zaidisoft/teninone/UnitPriceCalculator;->access$002(Lcom/zaidisoft/teninone/UnitPriceCalculator;I)I

    .line 77
    iget-object v0, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator$1;->this$0:Lcom/zaidisoft/teninone/UnitPriceCalculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/UnitPriceCalculator;->access$100(Lcom/zaidisoft/teninone/UnitPriceCalculator;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator$1;->this$0:Lcom/zaidisoft/teninone/UnitPriceCalculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/UnitPriceCalculator;->access$200(Lcom/zaidisoft/teninone/UnitPriceCalculator;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 81
    :pswitch_1
    iget-object v0, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator$1;->this$0:Lcom/zaidisoft/teninone/UnitPriceCalculator;

    invoke-static {v0, v2}, Lcom/zaidisoft/teninone/UnitPriceCalculator;->access$002(Lcom/zaidisoft/teninone/UnitPriceCalculator;I)I

    .line 82
    iget-object v0, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator$1;->this$0:Lcom/zaidisoft/teninone/UnitPriceCalculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/UnitPriceCalculator;->access$100(Lcom/zaidisoft/teninone/UnitPriceCalculator;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator$1;->this$0:Lcom/zaidisoft/teninone/UnitPriceCalculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/UnitPriceCalculator;->access$200(Lcom/zaidisoft/teninone/UnitPriceCalculator;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x7f09003a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
