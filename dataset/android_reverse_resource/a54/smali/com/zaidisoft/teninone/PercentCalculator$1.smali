.class Lcom/zaidisoft/teninone/PercentCalculator$1;
.super Ljava/lang/Object;
.source "PercentCalculator.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zaidisoft/teninone/PercentCalculator;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zaidisoft/teninone/PercentCalculator;


# direct methods
.method constructor <init>(Lcom/zaidisoft/teninone/PercentCalculator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zaidisoft/teninone/PercentCalculator;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/zaidisoft/teninone/PercentCalculator$1;->this$0:Lcom/zaidisoft/teninone/PercentCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 6
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const v5, 0x7f0d009e

    const v4, 0x7f0d009d

    const v3, 0x7f0d0041

    const/4 v1, 0x0

    const v2, 0x7f0d00a0

    .line 50
    packed-switch p2, :pswitch_data_0

    .line 70
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator$1;->this$0:Lcom/zaidisoft/teninone/PercentCalculator;

    invoke-static {v0, v1}, Lcom/zaidisoft/teninone/PercentCalculator;->access$002(Lcom/zaidisoft/teninone/PercentCalculator;I)I

    .line 71
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator$1;->this$0:Lcom/zaidisoft/teninone/PercentCalculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/PercentCalculator;->access$100(Lcom/zaidisoft/teninone/PercentCalculator;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 72
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator$1;->this$0:Lcom/zaidisoft/teninone/PercentCalculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/PercentCalculator;->access$200(Lcom/zaidisoft/teninone/PercentCalculator;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 73
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator$1;->this$0:Lcom/zaidisoft/teninone/PercentCalculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/PercentCalculator;->access$300(Lcom/zaidisoft/teninone/PercentCalculator;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 76
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator$1;->this$0:Lcom/zaidisoft/teninone/PercentCalculator;

    invoke-static {v0, v1}, Lcom/zaidisoft/teninone/PercentCalculator;->access$002(Lcom/zaidisoft/teninone/PercentCalculator;I)I

    .line 53
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator$1;->this$0:Lcom/zaidisoft/teninone/PercentCalculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/PercentCalculator;->access$100(Lcom/zaidisoft/teninone/PercentCalculator;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 54
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator$1;->this$0:Lcom/zaidisoft/teninone/PercentCalculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/PercentCalculator;->access$200(Lcom/zaidisoft/teninone/PercentCalculator;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 55
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator$1;->this$0:Lcom/zaidisoft/teninone/PercentCalculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/PercentCalculator;->access$300(Lcom/zaidisoft/teninone/PercentCalculator;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator$1;->this$0:Lcom/zaidisoft/teninone/PercentCalculator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zaidisoft/teninone/PercentCalculator;->access$002(Lcom/zaidisoft/teninone/PercentCalculator;I)I

    .line 59
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator$1;->this$0:Lcom/zaidisoft/teninone/PercentCalculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/PercentCalculator;->access$100(Lcom/zaidisoft/teninone/PercentCalculator;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 60
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator$1;->this$0:Lcom/zaidisoft/teninone/PercentCalculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/PercentCalculator;->access$200(Lcom/zaidisoft/teninone/PercentCalculator;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 61
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator$1;->this$0:Lcom/zaidisoft/teninone/PercentCalculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/PercentCalculator;->access$300(Lcom/zaidisoft/teninone/PercentCalculator;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d0042

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 64
    :pswitch_2
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator$1;->this$0:Lcom/zaidisoft/teninone/PercentCalculator;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/zaidisoft/teninone/PercentCalculator;->access$002(Lcom/zaidisoft/teninone/PercentCalculator;I)I

    .line 65
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator$1;->this$0:Lcom/zaidisoft/teninone/PercentCalculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/PercentCalculator;->access$100(Lcom/zaidisoft/teninone/PercentCalculator;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f0d009c

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 66
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator$1;->this$0:Lcom/zaidisoft/teninone/PercentCalculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/PercentCalculator;->access$200(Lcom/zaidisoft/teninone/PercentCalculator;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 67
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator$1;->this$0:Lcom/zaidisoft/teninone/PercentCalculator;

    invoke-static {v0}, Lcom/zaidisoft/teninone/PercentCalculator;->access$300(Lcom/zaidisoft/teninone/PercentCalculator;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d0043

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x7f090117
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
