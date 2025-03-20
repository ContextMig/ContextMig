.class Lcom/appsbyvir/tipcalculator/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsbyvir/tipcalculator/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsbyvir/tipcalculator/MainActivity;


# direct methods
.method constructor <init>(Lcom/appsbyvir/tipcalculator/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appsbyvir/tipcalculator/MainActivity$2;->this$0:Lcom/appsbyvir/tipcalculator/MainActivity;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    const-wide/16 v4, 0x0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/appsbyvir/tipcalculator/MainActivity$2;->this$0:Lcom/appsbyvir/tipcalculator/MainActivity;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/appsbyvir/tipcalculator/MainActivity;->access$2(Lcom/appsbyvir/tipcalculator/MainActivity;D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/appsbyvir/tipcalculator/MainActivity$2;->this$0:Lcom/appsbyvir/tipcalculator/MainActivity;

    invoke-static {v1}, Lcom/appsbyvir/tipcalculator/MainActivity;->access$1(Lcom/appsbyvir/tipcalculator/MainActivity;)V

    .line 127
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Lcom/appsbyvir/tipcalculator/MainActivity$2;->this$0:Lcom/appsbyvir/tipcalculator/MainActivity;

    invoke-static {v1, v4, v5}, Lcom/appsbyvir/tipcalculator/MainActivity;->access$2(Lcom/appsbyvir/tipcalculator/MainActivity;D)V

    .line 123
    iget-object v1, p0, Lcom/appsbyvir/tipcalculator/MainActivity$2;->this$0:Lcom/appsbyvir/tipcalculator/MainActivity;

    invoke-static {v1, v4, v5}, Lcom/appsbyvir/tipcalculator/MainActivity;->access$3(Lcom/appsbyvir/tipcalculator/MainActivity;D)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 132
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 137
    return-void
.end method
