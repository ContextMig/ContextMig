.class Lcom/zaidisoft/teninone/SimpleInterestCalculator$1;
.super Ljava/lang/Object;
.source "SimpleInterestCalculator.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zaidisoft/teninone/SimpleInterestCalculator;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zaidisoft/teninone/SimpleInterestCalculator;


# direct methods
.method constructor <init>(Lcom/zaidisoft/teninone/SimpleInterestCalculator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zaidisoft/teninone/SimpleInterestCalculator;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator$1;->this$0:Lcom/zaidisoft/teninone/SimpleInterestCalculator;

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

    .line 60
    sparse-switch p2, :sswitch_data_0

    .line 70
    iget-object v0, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator$1;->this$0:Lcom/zaidisoft/teninone/SimpleInterestCalculator;

    invoke-static {v0, v2}, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->access$002(Lcom/zaidisoft/teninone/SimpleInterestCalculator;I)I

    .line 71
    iget-object v0, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator$1;->this$0:Lcom/zaidisoft/teninone/SimpleInterestCalculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->access$100(Lcom/zaidisoft/teninone/SimpleInterestCalculator;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    :goto_0
    return-void

    .line 62
    :sswitch_0
    iget-object v0, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator$1;->this$0:Lcom/zaidisoft/teninone/SimpleInterestCalculator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->access$002(Lcom/zaidisoft/teninone/SimpleInterestCalculator;I)I

    .line 63
    iget-object v0, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator$1;->this$0:Lcom/zaidisoft/teninone/SimpleInterestCalculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->access$100(Lcom/zaidisoft/teninone/SimpleInterestCalculator;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 66
    :sswitch_1
    iget-object v0, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator$1;->this$0:Lcom/zaidisoft/teninone/SimpleInterestCalculator;

    invoke-static {v0, v2}, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->access$002(Lcom/zaidisoft/teninone/SimpleInterestCalculator;I)I

    .line 67
    iget-object v0, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator$1;->this$0:Lcom/zaidisoft/teninone/SimpleInterestCalculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->access$100(Lcom/zaidisoft/teninone/SimpleInterestCalculator;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 60
    :sswitch_data_0
    .sparse-switch
        0x7f09003d -> :sswitch_0
        0x7f0900d5 -> :sswitch_1
    .end sparse-switch
.end method
