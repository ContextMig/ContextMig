.class Lanti/tip/Tip$2;
.super Ljava/lang/Object;
.source "Tip.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanti/tip/Tip;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanti/tip/Tip;


# direct methods
.method constructor <init>(Lanti/tip/Tip;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanti/tip/Tip$2;->this$0:Lanti/tip/Tip;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 143
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 147
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v1, p0, Lanti/tip/Tip$2;->this$0:Lanti/tip/Tip;

    invoke-static {v1}, Lanti/tip/Tip;->access$3(Lanti/tip/Tip;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lanti/tip/Tip$2;->this$0:Lanti/tip/Tip;

    invoke-static {v1}, Lanti/tip/Tip;->access$3(Lanti/tip/Tip;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Lanti/tip/Tip$2;->this$0:Lanti/tip/Tip;

    iput v3, v1, Lanti/tip/Tip;->numPercent:I

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lanti/tip/Tip$2;->this$0:Lanti/tip/Tip;

    invoke-static {v1}, Lanti/tip/Tip;->access$3(Lanti/tip/Tip;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 165
    iget-object v1, p0, Lanti/tip/Tip$2;->this$0:Lanti/tip/Tip;

    iget v1, v1, Lanti/tip/Tip;->numPercent:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 168
    iget-object v1, p0, Lanti/tip/Tip$2;->this$0:Lanti/tip/Tip;

    iget-object v2, p0, Lanti/tip/Tip$2;->this$0:Lanti/tip/Tip;

    invoke-static {v2}, Lanti/tip/Tip;->access$3(Lanti/tip/Tip;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lanti/tip/Tip;->access$4(Lanti/tip/Tip;D)V

    .line 169
    iget-object v1, p0, Lanti/tip/Tip$2;->this$0:Lanti/tip/Tip;

    invoke-static {v1}, Lanti/tip/Tip;->access$2(Lanti/tip/Tip;)V

    .line 172
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 158
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lanti/tip/Tip$2;->this$0:Lanti/tip/Tip;

    invoke-static {v1}, Lanti/tip/Tip;->access$3(Lanti/tip/Tip;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    .line 160
    iget-object v1, p0, Lanti/tip/Tip$2;->this$0:Lanti/tip/Tip;

    iget v2, v1, Lanti/tip/Tip;->numPercent:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lanti/tip/Tip;->numPercent:I

    .line 156
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
