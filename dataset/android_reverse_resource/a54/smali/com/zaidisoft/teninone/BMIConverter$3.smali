.class Lcom/zaidisoft/teninone/BMIConverter$3;
.super Ljava/lang/Object;
.source "BMIConverter.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zaidisoft/teninone/BMIConverter;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zaidisoft/teninone/BMIConverter;


# direct methods
.method constructor <init>(Lcom/zaidisoft/teninone/BMIConverter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zaidisoft/teninone/BMIConverter;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/zaidisoft/teninone/BMIConverter$3;->this$0:Lcom/zaidisoft/teninone/BMIConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 6
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const v5, 0x7f0d0096

    const v4, 0x7f0d0094

    const v3, 0x7f0d0093

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 90
    sparse-switch p2, :sswitch_data_0

    .line 106
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter$3;->this$0:Lcom/zaidisoft/teninone/BMIConverter;

    invoke-static {v0, v1}, Lcom/zaidisoft/teninone/BMIConverter;->access$002(Lcom/zaidisoft/teninone/BMIConverter;I)I

    .line 107
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter$3;->this$0:Lcom/zaidisoft/teninone/BMIConverter;

    iget-object v1, p0, Lcom/zaidisoft/teninone/BMIConverter$3;->this$0:Lcom/zaidisoft/teninone/BMIConverter;

    invoke-static {v1}, Lcom/zaidisoft/teninone/BMIConverter;->access$000(Lcom/zaidisoft/teninone/BMIConverter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zaidisoft/teninone/BMIConverter;->resetBMI(I)V

    .line 108
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter$3;->this$0:Lcom/zaidisoft/teninone/BMIConverter;

    invoke-static {v0}, Lcom/zaidisoft/teninone/BMIConverter;->access$200(Lcom/zaidisoft/teninone/BMIConverter;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter$3;->this$0:Lcom/zaidisoft/teninone/BMIConverter;

    invoke-static {v0}, Lcom/zaidisoft/teninone/BMIConverter;->access$300(Lcom/zaidisoft/teninone/BMIConverter;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter$3;->this$0:Lcom/zaidisoft/teninone/BMIConverter;

    invoke-static {v0}, Lcom/zaidisoft/teninone/BMIConverter;->access$400(Lcom/zaidisoft/teninone/BMIConverter;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 113
    :goto_0
    return-void

    .line 92
    :sswitch_0
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter$3;->this$0:Lcom/zaidisoft/teninone/BMIConverter;

    invoke-static {v0, v2}, Lcom/zaidisoft/teninone/BMIConverter;->access$002(Lcom/zaidisoft/teninone/BMIConverter;I)I

    .line 93
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter$3;->this$0:Lcom/zaidisoft/teninone/BMIConverter;

    invoke-virtual {v0, v1}, Lcom/zaidisoft/teninone/BMIConverter;->resetBMI(I)V

    .line 94
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter$3;->this$0:Lcom/zaidisoft/teninone/BMIConverter;

    invoke-static {v0}, Lcom/zaidisoft/teninone/BMIConverter;->access$200(Lcom/zaidisoft/teninone/BMIConverter;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d0095

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 95
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter$3;->this$0:Lcom/zaidisoft/teninone/BMIConverter;

    invoke-static {v0}, Lcom/zaidisoft/teninone/BMIConverter;->access$300(Lcom/zaidisoft/teninone/BMIConverter;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d0097

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 96
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter$3;->this$0:Lcom/zaidisoft/teninone/BMIConverter;

    invoke-static {v0}, Lcom/zaidisoft/teninone/BMIConverter;->access$400(Lcom/zaidisoft/teninone/BMIConverter;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d0092

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 99
    :sswitch_1
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter$3;->this$0:Lcom/zaidisoft/teninone/BMIConverter;

    invoke-static {v0, v1}, Lcom/zaidisoft/teninone/BMIConverter;->access$002(Lcom/zaidisoft/teninone/BMIConverter;I)I

    .line 100
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter$3;->this$0:Lcom/zaidisoft/teninone/BMIConverter;

    invoke-virtual {v0, v2}, Lcom/zaidisoft/teninone/BMIConverter;->resetBMI(I)V

    .line 101
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter$3;->this$0:Lcom/zaidisoft/teninone/BMIConverter;

    invoke-static {v0}, Lcom/zaidisoft/teninone/BMIConverter;->access$200(Lcom/zaidisoft/teninone/BMIConverter;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 102
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter$3;->this$0:Lcom/zaidisoft/teninone/BMIConverter;

    invoke-static {v0}, Lcom/zaidisoft/teninone/BMIConverter;->access$300(Lcom/zaidisoft/teninone/BMIConverter;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 103
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter$3;->this$0:Lcom/zaidisoft/teninone/BMIConverter;

    invoke-static {v0}, Lcom/zaidisoft/teninone/BMIConverter;->access$400(Lcom/zaidisoft/teninone/BMIConverter;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090092 -> :sswitch_0
        0x7f0900e3 -> :sswitch_1
    .end sparse-switch
.end method
