.class Lcom/jpstudiosonline/tipcalculator/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jpstudiosonline/tipcalculator/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jpstudiosonline/tipcalculator/MainActivity;


# direct methods
.method constructor <init>(Lcom/jpstudiosonline/tipcalculator/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jpstudiosonline/tipcalculator/MainActivity;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity$5;->this$0:Lcom/jpstudiosonline/tipcalculator/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity$5;->this$0:Lcom/jpstudiosonline/tipcalculator/MainActivity;

    invoke-virtual {v0}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->resetBillInfo()V

    .line 215
    return-void
.end method
